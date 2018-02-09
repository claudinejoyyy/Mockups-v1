module.exports = function(app, db, moment){

  var admitCount = "SELECT (SELECT count(name) pCount FROM patient) as patientCount,"
                  +"(SELECT count(patient_id) er FROM admit WHERE department = 'ER') as erCount, "
                  +"(SELECT count(patient_id) opd FROM admit WHERE department = 'OPD') as opdCount,"
                  +"(SELECT count(patient_id) ward FROM admit WHERE department = 'ward') as wardCount,"
                  +"SELECT count(patient_id) admitted FROM admit;";
  var chartSQL   = "SELECT  (SELECT count(patient_id) from patient where patient_type = 'cadet') as cadet,"
                  +"(SELECT count(patient_id) from patient where patient_type = 'military officer') as military_officer,"
                  +"(SELECT count(patient_id) from patient where patient_type = 'military dependent') as military_dependent,"
                  +"(SELECT count(patient_id) from patient where patient_type = 'civilian') as civilian,"
                  +"(SELECT count(patient_id) from patient where patient_type = 'authorized civilian') as authorized_civilian;";
  app.get('/admin', function(req, res){
    if(req.session.email){
      if(req.session.sino == 'admin/dashboard'){
        res.render('admin');
      } else {
        res.redirect(req.session.sino);
      }
    } else {
      res.redirect('../login');
    }
  });
}
