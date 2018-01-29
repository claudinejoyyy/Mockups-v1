var db = require("../database/db.js");
module.exports = function(app){
var user, immu, fh, Aid;

  app.get('/nurse/dashboard', function(req, res){
    if(req.session.email){
      if(req.session.sino == 'nurse'){
        Aid = req.session.Aid;
        var name    = "SELECT name FROM nurse where account_id = ?;";
        var immuSQL = "SELECT name FROM immunization;";
        var fhSQL   = "SELECT name FROM family_history;";
        var patient = "SELECT p.name, p.patient_id FROM patient p WHERE  NOT EXISTS (SELECT a.patient_id FROM admit a WHERE  a.patient_id = p.patient_id);";
        var admitCount = "SELECT count(patient_id) er FROM admit WHERE department = 'ER'; "
                        +"SELECT count(patient_id) opd FROM admit WHERE department = 'OPD';"
                        +"SELECT count(patient_id) ward FROM admit WHERE department = 'ward';"
                        +"SELECT count(name) pCount FROM patient;"
                        +"SELECT count(patient_id) admitted FROM admit;";
        db.query(name + immuSQL + fhSQL + patient + admitCount, Aid, function(err, rows, fields){
          user = rows[0];
          res.render('nurse/dashboard', {immu:rows[1], fh:rows[2], p:rows[3], er:rows[4], opd:rows[5], ward:rows[6], pCount:rows[7], admitted:rows[8], username: user});
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
        var admitSQL = "INSERT INTO admit VALUES ("+data.patient+", "+JSON.stringify(data.department)+")";
        if(data.sub == "admit"){
          db.query(admitSQL, function(err, rows, fields){
            if(err){
              console.log(err);
            } else {
              res.redirect(req.get('referer'));
            }
          });
        } else if(data.sub == "add") {
          var bdParse = data.birth.split('-');
          var birthDate = bdParse[0] + bdParse[1] + bdParse[2];
          var father = data.father + '\n:' + data.fatherO;
          var mother = data.mother + '\n:' + data.motherO;
          console.log(JSON.stringify(data.family_history));
          console.log(JSON.stringify(data.immunization));
          var addSQL = "INSERT INTO patient (name, unit, address, age, religion, father, mother, allergies, birth_history,birth_date, sex, patient_type, status, blood_type, rankORsn, immu_id, fh_id)"
                     +" VALUES ("+JSON.stringify(data.name)+", "+JSON.stringify(data.unit)+","+JSON.stringify(data.address)+","
                     +" "+data.age+", "+JSON.stringify(data.religion)+", "+JSON.stringify(father)+","+JSON.stringify(mother)+","
                     +" "+JSON.stringify(data.allergies)+", "+JSON.stringify(data.bh)+", "+birthDate+", "+JSON.stringify(data.gender)+","
                     +" "+JSON.stringify(data.type)+", "+JSON.stringify(data.status)+", "+JSON.stringify(data.blood)+","
                     +" "+JSON.stringify(data.rankSN)+", "+"immunization"+", "+"fh"+")";
          db.query(addSQL, function(err, rows, fields){
            if(err){
              console.log(err);
            } else {
              res.redirect(req.get('referer'));
            }
          });
        }

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
        var sql  = "SELECT i.name immu_id, f.name fh_id, "
                    +"p.name, p.age, p.unit, p.sex, p.status, p.birth_date, patient_type, "
                    +"p.address, p.religion, p.blood_type, p.allergies, p.father, p.mother "
                    +"FROM patient p "
                    +"INNER JOIN immunization i USING(immu_id) "
                    +"INNER JOIN family_history f USING(fh_id)"
        db.query(name + ";" + sql, Aid, function(err, rows, fields){
          user = rows[0];
          res.render('nurse/patientManagement', {p:rows[1], username: user});
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
        res.redirect('../login');
    }
  });

}
