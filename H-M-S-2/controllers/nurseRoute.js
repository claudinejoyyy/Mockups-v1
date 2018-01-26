var db = require("../database/db.js");
module.exports = function(app){
var user, immu, rank, fh, Aid;

  app.get('/nurse/dashboard', function(req, res){
    if(req.session.email){
      if(req.session.sino == 'nurse'){
        Aid = req.session.Aid;
        var name     = "SELECT name FROM nurse where account_id = ?";
        var immuSQL = "SELECT name FROM immunization";
        var rankSQL = "SELECT name FROM rank";
        var fhSQL   = "SELECT name FROM family_history";
        db.query(name + ";" + immuSQL + ";" + rankSQL + ";" + fhSQL, Aid, function(err, rows, fields){
          user = rows[0];
          res.render('nurse/dashboard', {immu:rows[1], rank:rows[2], fh:rows[3], username: user});
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
        res.redirect('../login');
    }
  });

  app.post('/nurse/dashboard', function(req, res){
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
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
        res.redirect('../login');
    }
  });

  app.get('/nurse/patientManagement', function(req, res){
    if(req.session.email){
      if(req.session.sino == 'nurse'){
        var name  = "SELECT name FROM nurse where account_id = ?";
        var sql   = "SELECT * FROM patient";
        var sql2  = "SELECT r.name rank_id, i.name immu_id, f.name fh_id FROM patient p "
                    +"INNER JOIN rank r USING(rank_id) "
                    +"INNER JOIN immunization i USING(immu_id) "
                    +"INNER JOIN family_history f USING(fh_id)"
        db.query(name + ";" + sql + ";" + sql2, Aid, function(err, rows, fields){
          user = rows[0];
          res.render('nurse/patientManagement', {p:rows[1], p2:rows[2], username: user});
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
        res.redirect('../login');
    }
  });

}
