module.exports = function(app,db,currentTime,name,counts,chart,whoCurrentlyAdmitted,whoOPD,whoWARD,monthlyPatientCount,patientList,doctorList){
var user, Aid;

  app.get('/nurse/dashboard', function(req, res){
    if(req.session.email && req.session.sino == 'nurse'){
      if(req.session.sino == 'nurse'){
        Aid = req.session.Aid;
        var immuSQL     = "SELECT name FROM immunization;";
        var fhSQL       = "SELECT name FROM family_history;";
        var todoList    = "SELECT * from todo_list where account_id = "+req.session.Aid+";";
        var availablePatientOPD = "SELECT * from patient where patient_id NOT IN(SELECT patient_id from initial_assessment);";
        db.query(name + counts + chart + whoCurrentlyAdmitted + whoOPD + whoWARD + immuSQL + fhSQL + doctorList + availablePatientOPD + monthlyPatientCount + todoList, Aid, function(err, rows, fields){
          if (err) {
            console.log(err);
          }
          user = rows[0];
          res.render('nurse/dashboard', {counts:rows[1], chart:rows[2], whoCurrentlyAdmitted:rows[3], whoOPD:rows[4],whoWARD:rows[5], immu:rows[6],
                                         fh:rows[7], doctorList:rows[8], availablePatientOPD:rows[9], monthlyPatientCount:rows[10], todoList:rows[11], username: user});
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
    if(req.session.email && req.session.sino == 'nurse'){
      if(req.session.sino == 'nurse'){
        var pNameSQL = "SELECT name from patient where patient_id = "+data.patient+";";

        if(data.sub == 'assessment') {
          var vitalSigns = data.BP +'\n'+ data.CR +'\n'+ data.PR +'\n'+ data.RR +'\n'+ data.temperature +'\n'+ data.Wt +'\n'+ data.age;
          var initialAssessment = 'INSERT into initial_assessment (assessment, date, patient_id, account_id, vital_signs) VALUES("'+data.assessment+'", "'+currentTime+'",'+data.assessmentPatient+','+data.assessmentDoctor+',"'+vitalSigns+'");';
          db.query(initialAssessment + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+Aid+',"'+currentTime+'", "initialAssessment", "assessment for '+data.assessmentPatient+'");', function(err){
            if (err) {
              console.log(err);
            }
          });
          res.redirect(req.get('referer'));
        } else if(data.sub == "add") {
            var bdParse       = data.birth.split('-');
            var birthDate     = bdParse[0] + bdParse[1] + bdParse[2];
            var fhParse       = data.family_history.split(',');
            var immuParse     = data.immunization.split(',');
            var father        = data.father + '\n:' + data.fatherO;
            var mother        = data.mother + '\n:' + data.motherO;
            var family_history = ""; for (var i = 0; i < fhParse.length; i++) {family_history += fhParse[i] + '\n';};
            var immunization   = ""; for (var i = 0; i < immuParse.length; i++) {immunization += immuParse[i] + '\n';};
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
                db.query('INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+currentTime+'", "add", "Added: '+data.type+' - '+data.name+'");', function(err){
                  if (err) {
                    console.log(err);
                  }
                  });
                res.redirect(req.get('referer'));
              }
            });
        } else if (data.sub == 'discharge'){
              var admitDischarge           = "DELETE FROM admit WHERE patient_id = "+req.query.id+";";
              var patientNameSQL           = "SELECT name from patient WHERE patient_id = "+req.query.id+";";
              var admitDischargeDepartment = "SELECT department FROM admit WHERE patient_id = "+req.query.id+";";
              db.query(patientNameSQL + admitDischargeDepartment, function(err, rows){
                if(err){
                  console.log(err);
                } else {
                  var patientName = JSON.parse(JSON.stringify(rows[0]));
                  var patientDepartment = JSON.parse(JSON.stringify(rows[1]));
                  db.query(admitDischarge + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+currentTime+'", "discharge", "Discharged : '+patientName[0].name+' From '+patientDepartment[0].department+' Department");', function(err){
                  if (err) {
                    console.log(err);
                  }
                  });
                  res.redirect(req.get('referer'));
                }
              });
        } else if (data.sub == 'addTodo') {
              var splitDateNTime = data.dateNtime.split('T');
              var parseDate      = splitDateNTime[0];
              var parseTime      = splitDateNTime[1] + ':00';
              var parseDateNTime = parseDate+' '+parseTime;

              var addTodo  = 'INSERT into todo_list (description, date, account_id) VALUES("'+data.description+'","'+parseDateNTime+'",'+req.session.Aid+');';
              db.query(addTodo + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+currentTime+'", "todo", "Added to To Do List the following: '+data.description+'");', function(err){
                if (err) {
                  console.log(err);
                }
              });
              res.redirect(req.get('referer'));
        }
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
        res.redirect('../login');
    }
  });

  app.get('/nurse/patientManagement', function(req, res){
    if(req.session.email && req.session.sino == 'nurse'){
      if(req.session.sino == 'nurse'){
        var name  = "SELECT name FROM user_accounts where account_id = ?";
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
    if (req.session.email && req.session.sino == 'nurse') {
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
    if(req.session.email && req.session.sino == 'nurse'){
      if(req.session.sino == 'nurse') {
        var dischargeSQL = "UPDATE bed SET status = 'Unoccupied', allotment_timestamp = NULL, patient_id = NULL where bed_id = "+req.query.bed+";";
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
    if(req.session.email && req.session.sino == 'nurse'){
      if (req.session.sino == 'nurse') {
        var profileInfoSQL  = 'SELECT * from user_accounts where account_id = '+req.session.Aid+';';
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
    if (req.session.email && req.session.sino == 'nurse') {
      if (req.session.sino == 'nurse') {
        var updateProfileSQL = 'UPDATE user_accounts SET name = "'+data.name+'", age = '+data.age+', address = "'+data.address+'", phone = '+data.phone+' WHERE account_id = '+req.session.Aid+';';
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
