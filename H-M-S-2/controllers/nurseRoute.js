var connection = require("../database/db.js");

module.exports = function(app){

  app.get('/nurse', function(req, res){
    if(req.session.email){
      if(req.session.sino == 'nurse'){
        connection.query("SELECT * FROM nurse where account_id = '"+req.session.Aid+"';", function(err, rows, fields){
          res.render('nurse', {data: rows[0].name});
        });
      } else {
        res.redirect(req.session.sino);
      }
    } else {
        res.redirect('login');
    }
  });

  app.post('/nurse', function(req, res){
    if(req.session.email){
      if(req.session.sino == 'nurse'){
        connection.query("SELECT * FROM nurse where account_id = '"+req.session.Aid+"';", function(err, rows, fields){
          res.render('nurse', {data: rows[0].name});
        });
      } else {
        res.redirect(req.session.sino);
      }
    } else {
        res.redirect('login');
    }
  });

}


// UPDATE tobeupdated

// INNER JOIN original USING (account_id)
// SET tobeupdated.id = original.id
