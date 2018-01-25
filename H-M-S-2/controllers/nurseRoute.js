var db = require("../database/db.js");
module.exports = function(app){
var user, immu, rank, fh;

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

  app.post('/nurse', function(req, res){
    var data = req.body;
    if(req.session.email){
      if(req.session.sino == 'nurse'){
        var bdParse = data.birth.split('-');
        var birthDate = bdParse[0] + bdParse[1] + bdParse[2];
        var father = data.father + '\n' + data.fatherO;
        var mother = data.mother + '\n' + data.motherO;
        db.query("INSERT INTO patient (name, unit, address, age, religion, father, mother, allergies, birth_history,birth_date, sex, patient_type, status, blood_type, rank_id, immu_id, fh_id)"
                   +" VALUES ("+JSON.stringify(data.name)+", "+JSON.stringify(data.unit)+","+JSON.stringify(data.address)+","
                   +" "+data.age+", "+JSON.stringify(data.religion)+", "+JSON.stringify(father)+","+JSON.stringify(mother)+","
                   +" "+JSON.stringify(data.allergies)+", "+JSON.stringify(data.bh)+", "+birthDate+", "+JSON.stringify(data.gender)+","
                   +" "+JSON.stringify(data.type)+", "+JSON.stringify(data.status)+", "+JSON.stringify(data.blood)+","
                   +" "+data.rank+", "+data.immu+", "+data.fh+");", function(err, rows, fields){
          if(err){
            console.log(err);
          } else {
            res.redirect(req.get('referer'));
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
