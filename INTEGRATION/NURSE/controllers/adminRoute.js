var connection = require("../database/db.js");

module.exports = function(app){
  app.get('/admin', function(req, res){
    if(req.session.email){
      if(req.session.sino == 'admin'){
        res.render('admin');
      } else {
        res.redirect(req.session.sino);
      }
    } else {
      res.redirect('login');
    }
  });
}
