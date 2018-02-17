module.exports = function(app,db,currentTime,name,counts,chart,whoCurrentlyAdmitted,whoOPD,whoWARD,monthlyPatientCount,patientList,availableBeds){
var user, Aid;

  app.get('/admin/dashboard', function(req, res){
    if(req.session.email && req.session.sino == 'admin'){
      Aid = req.session.Aid;
      if(req.session.sino == 'admin'){
        var todoList    = "SELECT * from todo_list where account_id = "+req.session.Aid+";";
        db.query(name + counts + chart + whoCurrentlyAdmitted + whoOPD + whoWARD + patientList + availableBeds + monthlyPatientCount + todoList, Aid, function(err, rows, fields){
          if (err) {
            console.log(err);
          }
          user = rows[0];
          res.render('admin/dashboard', {counts:rows[1], chart:rows[2], whoCurrentlyAdmitted:rows[3], whoOPD:rows[4],
                                         whoWARD:rows[5], patientList:rows[6], availableBeds:rows[7], monthlyPatientCount:rows[8], todoList:rows[9], username: user});
       });
      } else {
        res.redirect(req.session.sino + '/dashboard');
      }
    } else {
      res.redirect('../login');
    }
  });
}
