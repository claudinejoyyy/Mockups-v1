module.exports = function(app, db, moment){
var user, fh, Aid;
var currentTime = moment().format('YYYY-MM-DD HH:mm:ss');

  app.get('/nurse/dashboard', function(req, res){
    if(req.session.email){
      if(req.session.sino == 'nurse'){
        Aid = req.session.Aid;
        var name      = "SELECT name FROM nurse where account_id = ?;";
        var immuSQL   = "SELECT name FROM immunization;";
        var fhSQL     = "SELECT name FROM family_history;";
        var bedSQL    = "SELECT * from bed where status = 'Unoccupied';";
        var admitSQL  = "SELECT p.name, a.patient_id FROM admit a INNER JOIN patient p USING(patient_id);";
        var admitWARD = "SELECT p.name FROM admit INNER JOIN patient p USING(patient_id) WHERE department = 'ward';";
        var admitER   = "SELECT p.name FROM admit INNER JOIN patient p USING(patient_id) WHERE department = 'er';";
        var admitOPD  = "SELECT p.name FROM admit INNER JOIN patient p USING(patient_id) WHERE department = 'opd';";
        var bedPatientSQL = "SELECT name,patient_id from patient where name NOT IN (SELECT name from bed b INNER JOIN patient p USING(patient_id) where b.status = 'occupied');";
        var patient = "SELECT p.name, p.patient_id FROM patient p WHERE  NOT EXISTS (SELECT a.patient_id FROM admit a WHERE  a.patient_id = p.patient_id);";
        var admitCount = "SELECT count(patient_id) er FROM admit WHERE department = 'ER'; "
                        +"SELECT count(patient_id) opd FROM admit WHERE department = 'OPD';"
                        +"SELECT count(patient_id) ward FROM admit WHERE department = 'ward';"
                        +"SELECT count(name) pCount FROM patient;"
                        +"SELECT count(patient_id) admitted FROM admit;";
        var chartSQL   = "SELECT  (SELECT count(patient_id) from patient where patient_type = 'cadet') as cadet,"
                		    +"(SELECT count(patient_id) from patient where patient_type = 'military officer') as military_officer,"
                        +"(SELECT count(patient_id) from patient where patient_type = 'military dependent') as military_dependent,"
                		    +"(SELECT count(patient_id) from patient where patient_type = 'civilian') as civilian,"
                        +"(SELECT count(patient_id) from patient where patient_type = 'authorized civilian') as authorized_civilian;";

        db.query(name + immuSQL + fhSQL + patient + admitCount + chartSQL + bedSQL + bedPatientSQL + admitSQL + admitWARD + admitER + admitOPD, Aid, function(err, rows, fields){
          user = rows[0];
          res.render('nurse/dashboard', {immu:rows[1], fh:rows[2], p:rows[3], er:rows[4], opd:rows[5], ward:rows[6], pCount:rows[7], admitted:rows[8], pChart:rows[9], bed:rows[10],
                                         unassignedPatient:rows[11], admitLIST:rows[12], listWARD:rows[13], listER:rows[14], listOPD:rows[15], username: user});
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
        var admitSQL = "INSERT INTO admit VALUES ("+data.patient+", "+JSON.stringify(data.department)+");";
        var bedSQL   = 'UPDATE bed set allotment_timestamp = "'+data.dateNtime+'", patient_id = '+data.bedPatientName+',status = "occupied" where bed_id = '+data.bedNumber+';';
        var pNameSQL = "SELECT name from patient where patient_id = "+data.patient+";";
        if(data.sub == "admit"){
          db.query(admitSQL + pNameSQL, function(err, rows, fields){
            if(err){
              console.log(err);
            } else {
              var patientName = JSON.parse(JSON.stringify(rows[1]));
              db.query('INSERT into activity_logs(account_id, time, remarks) VALUES ('+req.session.Aid+',"'+currentTime+'", "Admitted '+patientName[0].name+' to '+data.department+'");', function(err){
                if (err) {
                  console.log(err);
                }
              });
              res.redirect(req.get('referer'));
            }
          });
        } else if(data.sub == "add") {
          var bdParse       = data.birth.split('-');
          var birthDate     = bdParse[0] + bdParse[1] + bdParse[2];
          var fhParse       = data.family_history.split(',');
          var immuParse     = data.immunization.split(',');
          var father        = data.father + '\n:' + data.fatherO;
          var mother        = data.mother + '\n:' + data.motherO;
          var family_history = "";
          var immunization   = "";
          for (var i = 0; i < fhParse.length; i++) {
            family_history += fhParse[i] + '\n';
          }
          for (var i = 0; i < immuParse.length; i++) {
            immunization += immuParse[i] + '\n';
          }
          var addSQL = "INSERT INTO patient (name, unit, address, age, religion, father, mother, allergies, birth_history,birth_date, sex, patient_type, status, blood_type, rankORsn, immunization, family_history)"
                     +" VALUES ("+JSON.stringify(data.name)+", "+JSON.stringify(data.unit)+","+JSON.stringify(data.address)+","
                     +" "+data.age+", "+JSON.stringify(data.religion)+", "+JSON.stringify(father)+","+JSON.stringify(mother)+","
                     +" "+JSON.stringify(data.allergies)+", "+JSON.stringify(data.bh)+", "+birthDate+", "+JSON.stringify(data.gender)+","
                     +" "+JSON.stringify(data.type)+", "+JSON.stringify(data.status)+", "+JSON.stringify(data.blood)+","
                     +" "+JSON.stringify(data.rankSN)+", "+JSON.stringify(immunization)+", "+JSON.stringify(family_history)+");";

          db.query(addSQL, function(err, rows){
            if(err){
              console.log(err);
            } else {
              db.query('INSERT into activity_logs(account_id, time, remarks) VALUES ('+req.session.Aid+',"'+currentTime+'", "Added: '+data.type+' - '+data.name+'");', function(err){
                if (err) {
                  console.log(err);
                }
                });
              res.redirect(req.get('referer'));
            }
          });
        } else if (data.sub == 'discharge'){
          var admitDischarge = "DELETE FROM admit WHERE patient_id = "+req.query.id+";";
          console.log(req.query.id);
          db.query(admitDischarge, function(err, rows){
            if(err){
              console.log(err);
            } else {
              db.query('INSERT into activity_logs(account_id, time, remarks) VALUES ('+req.session.Aid+',"'+currentTime+'", "Discharged : '+JSON.stringify(req.query.name)+' From  Department");', function(err){
              if (err) {
                console.log(err);
              }
              });
              res.redirect(req.get('referer'));
            }
          });
        } else { //FOR THE BED !!
          var pNameSQL = "SELECT name from patient where patient_id = "+data.bedPatientName+";";
          db.query(bedSQL + pNameSQL, function(err, rows, fields){
            if(err){
              console.log(err);
            } else {
              var patientName = JSON.parse(JSON.stringify(rows[1]));
              db.query('INSERT into activity_logs(account_id, time, remarks) VALUES ('+req.session.Aid+',"'+currentTime+'", "Assigned: '+patientName[0].name+' to bed number '+data.bedNumber+'");', function(err){
              if (err) {
                console.log(err);
              }
              });
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
        var sql  = "SELECT * FROM patient";

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

  app.get('/nurse/bedManagement', function(req, res){
    if (req.session.email) {
      if (req.session.sino == 'nurse') {
        var bedSQL = "SELECT b.bed_id, p.patient_type, p.name, b.status, b.allotment_timestamp from bed b LEFT JOIN patient p USING(patient_id); ";
        db.query(bedSQL, function(err, rows, fields){
          res.render('nurse/bedManagement', {bedDetails:rows});
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
      res.redirect('../login');
    }
  });

  app.post('/nurse/bedManagement', function(req, res){
    if(req.session.email){
      if(req.session.sino == 'nurse') {
        var dischargeSQL = "UPDATE bed SET status = 'Unoccupied', allotment_timestamp = NULL, patient_id = NULL where bed_id = "+req.body.bed[0]+";";
        var sql = db.query(dischargeSQL, function(err, rows, fields){
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

  app.get('/nurse/profileManagement', function(req, res){
    if(req.session.email){
      if (req.session.sino == 'nurse') {
        var profileInfoSQL  = 'SELECT * from nurse where account_id = '+req.session.Aid+';';
        var activityLogsSQL = 'SELECT * from activity_logs where account_id = '+req.session.Aid+' ORDER by logs_id desc;';
        db.query(profileInfoSQL + activityLogsSQL, function(err, rows){
          if (err) {
            console.log(err);
          } else {
            res.render('nurse/profileManagement', {pInfo:rows[0], activityInfo: rows[1]});
          }
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
      res.redirect('../login')
    }
  });

  app.post('/nurse/profileManagement', function(req, res){
    var data = req.body;
    if (req.session.email) {
      if (req.session.sino == 'nurse') {
        var updateProfileSQL = 'UPDATE nurse SET name = "'+data.name+'", age = '+data.age+', address = "'+data.address+'", phone = '+data.phone+' WHERE account_id = '+req.session.Aid+';';
        db.query(updateProfileSQL, function(err, rows){
          if (err) {
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

}
