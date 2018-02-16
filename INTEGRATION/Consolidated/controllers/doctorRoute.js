module.exports = function(app,db,currentTime,name,counts,chart,whoCurrentlyAdmitted,whoOPD,whoWARD,monthlyPatientCount,patientList,availableBeds){
var user, Aid;

  app.get('/doctor/dashboard', function(req, res){
    if(req.session.email && req.session.sino == 'doctor'){
      Aid = req.session.Aid;
      if(req.session.sino == 'doctor'){
        var todoList    = "SELECT * from todo_list where account_id = "+req.session.Aid+";";
        db.query(name + counts + chart + whoCurrentlyAdmitted + whoOPD + whoWARD + patientList + availableBeds + monthlyPatientCount + todoList, Aid, function(err, rows, fields){
          if (err) {
            console.log(err);
          }
          user = rows[0];
          res.render('doctor/dashboard', {counts:rows[1], chart:rows[2], whoCurrentlyAdmitted:rows[3], whoOPD:rows[4], whoWARD:rows[5], patientList:rows[6],
                                         availableBeds:rows[7], monthlyPatientCount:rows[8], todoList:rows[9], username: user, account_type: req.session.sino});
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

}
