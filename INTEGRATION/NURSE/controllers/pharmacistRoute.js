var connection = require("../database/db.js");

module.exports = function(app){
  app.get('/pharmacist', function(req, res){
      if(req.session.email){
        if(req.session.sino == 'pharmacist'){
          res.render('pharmacist');
        } else {
          res.redirect(req.session.sino);
        }
      } else {
        res.redirect('login');
      }
  });
}
