module.exports = function(app,db,currentTime,name,counts,chart,whoCurrentlyAdmitted,whoOPD,whoWARD,monthlyPatientCount,patientList,availableBeds){
var user, Aid, availableBedss;

  app.get('/doctor/dashboard', function(req, res){
    if(req.session.email && req.session.sino == 'doctor'){
      Aid = req.session.Aid;
      if(req.session.sino == 'doctor'){
        var todoList    = "SELECT * from todo_list where account_id = "+Aid+";";
        db.query(name + counts + chart + whoCurrentlyAdmitted + whoOPD + whoWARD + patientList + availableBeds + monthlyPatientCount + todoList, Aid, function(err, rows, fields){
          if (err) {
            console.log(err);
          }
          user = rows[0];
          availableBedss = rows[7];
          res.render('doctor/dashboard', {counts:rows[1], chart:rows[2], whoCurrentlyAdmitted:rows[3], whoOPD:rows[4], whoWARD:rows[5], patientList:rows[6],
                                         availableBeds:rows[7], monthlyPatientCount:rows[8], todoList:rows[9], username: user});
       });
      } else {
        res.redirect(req.session.sino + '/dashboard');
      }
    } else {
      res.redirect('../login');
    }
  });

  app.post('/doctor/dashboard', function(req, res){
    var data = req.body;
    if(req.session.email && req.session.sino == 'doctor'){
        if (req.session.sino == 'doctor') {
              if(data.sub == 'addTodo') {
                    var splitDateNTime = data.dateNtime.split('T');
                    var parseDate      = splitDateNTime[0];
                    var parseTime      = splitDateNTime[1] + ':00';
                    var parseDateNTime = parseDate+' '+parseTime;

                    var addTodo  = 'INSERT into todo_list (description, date, account_id) VALUES("'+data.description+'","'+parseDateNTime+'",'+Aid+');';
                    db.query(addTodo + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+Aid+',"'+currentTime+'", "todo", "Added to To Do List the following: '+data.description+'");', function(err){
                      if (err) {
                        console.log(err);
                      }
                    });
                    res.redirect(req.get('referer'));
              } else if(data.sub == 'appointment') {
                    var splitDateNTime = data.dateNtime.split('T');
                    var parseDate      = splitDateNTime[0];
                    var parseTime      = splitDateNTime[1] + ':00';
                    var parseDateNTime = parseDate+' '+parseTime;
                    var addAppointment = 'INSERT into appointment (doctor_id, patient_id, appointment_timestamp, remarks) VALUES ('+Aid+', '+data.appointmentPatientID+', "'+parseDateNTime+'", "'+data.appointmentRemarks+'");';
                    db.query(addAppointment + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+Aid+',"'+currentTime+'", "appointment", "Set Appointment with '+data.appointmentPatientName+' on '+parseDateNTime+'");', function(err){
                      if (err) {
                        console.log(err);
                      }
                    });
                    res.redirect(req.get('referer'));
              }
        } else {
          res.redirect(req.session.sino + '/dashboard');
        }
    } else {
      res.redirect('../login');
    }
  });
//OUTPATIENT
  app.get('/doctor/outpatientManagement', function(req, res){
    if(req.session.email && req.session.sino == 'doctor'){
      if (req.session.sino == 'doctor') {
          var outpatientDepartmentSQL = 'SELECT * FROM patient inner join initial_assessment i using(patient_id) where i.account_id = '+Aid+';';
          db.query(outpatientDepartmentSQL + availableBeds, function(err, rows){
          if (err) {
            console.log(err);
          } else {
                res.render('doctor/outpatientManagement', {opdInfo:rows[0], admitAvailableBeds:rows[1]});
          }
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
      res.redirect('../login')
    }
  });
  app.post('/doctor/outpatientManagement', function(req, res){
    var data = req.body;
    if(req.session.email && req.session.sino == 'doctor'){
      if (req.session.sino == 'doctor') {
          if (data.sub == 'admit') {
            var bedSQL = 'UPDATE bed set allotment_timestamp = "'+currentTime+'", patient_id = '+req.query.patient_id+',status = "occupied" where bed_id = '+data.bedNumber+';';
            db.query(bedSQL, function(err){
              if (err) {
                console.log(err);
              } else {
                res.redirect(req.get('referer'));
              }
            });
          } else if(data.sub == 'prescribe') {
            var prescribeSQL = 'INSERT into prescription (creation_stamp, medicine, quantity, dosage, timeframe, account_id, patient_id, status) VALUES ("'+currentTime+'","'+data.medicine+'",'+data.quantity+',"'+data.dosage+'","'+data.timeframe+'",'+Aid+','+req.query.patient_id+',"pending");';
            db.query(prescribeSQL, function(err){
              if (err) {
                console.log(err);
              } else {
                res.redirect(req.get('referer'));
              }
            });
          } else if (data.sub == 'labRequest') {
            var requestSQL = 'INSERT into lab_request(type,timestamp,remarks,account_id,patient_id) VALUES("'+data.testRequest+'","'+currentTime+'","'+data.labRequestremarks+'",'+Aid+','+req.query.patient_id+');';
            db.query(requestSQL, function(err){
              if (err) {
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
      res.redirect('../login')
    }
  });
  //BED MANAGEMENT
  app.get('/doctor/bedManagement', function(req, res){
    if (req.session.email && req.session.sino == 'doctor') {
      if (req.session.sino == 'doctor') {
        var bedSQL = "SELECT b.bed_id, p.patient_type, p.name, b.status, b.allotment_timestamp from bed b LEFT JOIN patient p USING(patient_id); ";
        db.query(bedSQL, function(err, rows, fields){
          res.render('doctor/bedManagement', {bedDetails:rows});
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
      res.redirect('../login');
    }
  });
  app.post('/doctor/bedManagement', function(req, res){
    if(req.session.email && req.session.sino == 'doctor'){
      if(req.session.sino == 'doctor') {
        var dischargeSQL = "UPDATE bed SET status = 'Unoccupied', allotment_timestamp = NULL, patient_id = NULL where bed_id = "+req.query.bed+";";
        db.query(dischargeSQL, function(err, rows, fields){
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
  //PATIENT MANAGEMENT
  app.get('/doctor/patientManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor'){
          var name  = "SELECT name FROM user_accounts where account_id = ?";
          var sql  = "SELECT * FROM patient";

          db.query(name + ";" + sql, Aid, function(err, rows, fields){
            user = rows[0];
            res.render('doctor/patientManagement', {p:rows[1], username: user});
          });
        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
          res.redirect('../login');
      }
    });
    //APPOINTMENT
    app.get('/doctor/appointmentManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor'){
          var appointmentSQL = 'SELECT * from appointment a inner join patient using(patient_id) where doctor_id = '+Aid+';';

          db.query(appointmentSQL, function(err, rows){
            if (err) {
              console.log(err);
            } else {
              res.render('doctor/appointmentManagement', {appointmentDetails:rows});
            }
          });
        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
          res.redirect('../login');
      }
    });
    app.post('/doctor/appointmentManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor') {
          var cancelAppointmentSQL = 'DELETE from appointment where appointment_id = '+req.query.appointmentId+';';
          db.query(cancelAppointmentSQL, function(err){
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
    //PRESCRIPTION
    app.get('/doctor/prescriptionManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor'){
          var prescriptionSQL = 'SELECT CONCAT("medicine:",medicine,"\nquantity:",quantity,"\ndosage:", dosage,"\ntimeframe:", timeframe) AS medications, p.status as STATUS,creation_stamp,patient_type,name,age,prescription_id from prescription p inner join patient using(patient_id) where doctor_id = '+Aid+';';

          db.query(prescriptionSQL, function(err, rows){
            if (err) {
              console.log(err);
            } else {
              res.render('doctor/prescriptionManagement', {prescriptionDetails:rows});
            }
          });
        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
          res.redirect('../login');
      }
    });
    app.post('/doctor/prescriptionManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor') {
          var cancelPrescriptionSQL = 'DELETE from prescription where prescription_id = '+req.query.prescriptionId+';';
          db.query(cancelPrescriptionSQL, function(err){
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
    //LAB REQUEST
    app.get('/doctor/labRequestManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor'){
          var labrequestSQL = 'SELECT * from lab_request l inner join patient using(patient_id) where doctor_id = '+Aid+';';

          db.query(labrequestSQL, function(err, rows){
            if (err) {
              console.log(err);
            } else {
              res.render('doctor/labRequestManagement', {labrequestDetails:rows});
            }
          });
        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
          res.redirect('../login');
      }
    });
    app.post('/doctor/labRequestManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor') {
          var cancelLabRequestSQL = 'DELETE from lab_request where request_id = '+req.query.requestId+';';
          db.query(cancelLabRequestSQL, function(err){
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
    // PROFILE MANAGEMENT
    app.get('/doctor/profileManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if (req.session.sino == 'doctor') {
          var profileInfoSQL  = 'SELECT * from user_accounts where account_id = '+req.session.Aid+';';
          var activityLogsSQL = 'SELECT * from activity_logs where account_id = '+req.session.Aid+' ORDER by logs_id desc;';
          db.query(profileInfoSQL + activityLogsSQL, function(err, rows){
            if (err) {
              console.log(err);
            } else {
              res.render('doctor/profileManagement', {pInfo:rows[0], activityInfo: rows[1]});
            }
          });
        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
        res.redirect('../login')
      }
    });

    app.post('/doctor/profileManagement', function(req, res){
      var data = req.body;
      if (req.session.email && req.session.sino == 'doctor') {
        if (req.session.sino == 'doctor') {
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
