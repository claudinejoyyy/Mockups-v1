module.exports = function(app,db,currentTime,name,counts,chart,whoCurrentlyAdmitted,whoOPD,whoWARD,monthlyPatientCount,patientList){
var user, Aid;

  app.get('/laboratorist/dashboard', function(req, res){
    if(req.session.email && req.session.sino == 'laboratorist'){
      if(req.session.sino == 'laboratorist'){
        Aid = req.session.Aid;
        var diagnosisSQL      = 'SELECT * from lab_request;';
        var bloodChemistrySQL = 'SELECT * from lab_request l inner join patient using(patient_id) where l.type = "bloodChemistry";';
        var hermatology       = 'SELECT * from lab_request l inner join patient using(patient_id) where l.type = "hermatology";';
        var microscopy        = 'SELECT * from lab_request l inner join patient using(patient_id) where l.type = "microscopy";';
        var parasitology      = 'SELECT * from lab_request l inner join patient using(patient_id) where l.type = "parasitology";';
        var serology          = 'SELECT * from lab_request l inner join patient using(patient_id) where l.type = "serotology";';
        var microbiology      = 'SELECT * from lab_request l inner join patient using(patient_id) where l.type = "microbiology";';
        var xRay              = 'SELECT * from lab_request l inner join patient using(patient_id) where l.type = "xRay";';
        var todoList          = "SELECT * from todo_list where account_id = "+Aid+";";
        db.query(todoList + diagnosisSQL + bloodChemistrySQL + hermatology + microscopy + parasitology + serology + microbiology + xRay + monthlyPatientCount + name, function(err, rows){
          if (err) {
            console.log(err);
          } else {
            user = rows[10];
            res.render('laboratorist/dashboard', {todoList:rows[0],diagnosisSQL:rows[1],bloodChemistrySQL:rows[2],hermatology:rows[3],
                                                microscopy:rows[4],parasitology:rows[5],serology:rows[6],microbiology:rows[7],xRay:rows[8],monthlyPatientCount:rows[9], username: user});
          }
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
        res.redirect('../login');
    }
  });

  app.post('/laboratorist/dashboard', function(req, res){
    var data = req.body;
    if (req.session.email && req.session.sino == 'laboratorist') {
      if (req.session.sino == 'laboratorist') {
        if (data.sub == 'addTodo') {
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
        }
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
      res.redirect('../login');
    }
  });


}
