var bodyParser = require('body-parser');
var db = require("../database/db.js");
var urlencodedParser = bodyParser.urlencoded({ extended: true});
module.exports = function(app){
var user;

  app.get('/nurse', function(req, res){
    if(req.session.email){
      if(req.session.sino == 'nurse'){
        var Aid = req.session.Aid;
        var sql     = "SELECT name FROM nurse where account_id = ?";
        var immuSQL = "SELECT name FROM immunization";
        var rankSQL = "SELECT name FROM rank";
        var fhSQL   = "SELECT name FROM family_history";
        db.query(sql + ";" + immuSQL + ";" + rankSQL + ";" + fhSQL, Aid, function(err, rows, fields){
          user = rows[0];
          res.render('nurse', {immu:rows[1], rank:rows[2], fh:rows[3], username: user});
        });
      } else {
        res.redirect(req.session.sino);
      }
    } else {
        res.redirect('login');
    }
  });

  app.post('/nurse', urlencodedParser, function(req, res){
    var data = req.body;
    var eval  = [data.name, data.unit,data.address, data.age, data.religion, data.father,data.mother,
                data.allergies, data.bh, data.birth, data.gender, data.type, data.status, data.blood,
                data.rank, data.immu, data.fh];
    if(req.session.email){
      if(req.session.sino == 'nurse'){
        db.query("INSERT INTO patient (name, unit, address, age, religion, father, mother, allergies, birth_history,"
                   +" birth_date, sex, patient_type, status, blood_type, rank_id, immu_id, fh_id) VALUES ?", [val], function(err, rows, fields){
          if(err){
            console.log(err);
          } else {
            res.render('nurse', {username: user});
          }
        });
      } else {
        res.redirect(req.session.sino);
      }
    } else {
        res.redirect('login');
    }
  });

}
