var db = require("../database/db.js");

module.exports = function(app){

  app.get('/', function(req, res){
    if(req.session.email){
        res.redirect(req.session.sino+'/dashboard');
    } else {
        res.redirect('login');
    }
  });

  app.get('/login', function(req, res){
    if(req.session.email){
        res.redirect(req.session.sino+'/dashboard');
    } else {
        res.render('login');
    }
  });

  app.post('/login', function(req, res){
      // res.end(req.body.email);
      var user = req.body.username;
      var pass = req.body.pass;
      var sql  = "SELECT * FROM user_accounts WHERE username = ? and password = ?" ;

      db.query(sql, [user, pass], function(err, rows, fields){
        if(err){
          console.log(err);
        }
        else if(rows == ''){
          res.redirect('error');
          //Dapat meron ccheck din kung may laman ung username or password dapat di mag redirect dapat mag reload lang(with the error message)
        }
        else{
            db.query("SELECT account_type, account_id FROM user_accounts where username = '"+user+"';", function(err, rows, fields){
            var sino = rows[0].account_type;
            var id = rows[0].account_id;
            req.session.sino = sino;
            req.session.Aid = id;
            req.session.email = req.body.username;
            req.session.password = req.body.pass;
            // + "/who=" + encodeURIComponent(sino)
            res.redirect(sino+'/dashboard');
          });
        }
      });
  });

  app.get('/logout', function(req, res){
      req.session.destroy();
      res.redirect('login');
  });

  app.get('/error', function(req, res){
      res.render('error');
  });

};
