module.exports = function(app, db, moment){
  var currentTime = moment().format('YYYY-MM-DD HH:mm:ss');
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
        } else {
          //JUST GET THE ACCOUNT ID FROM THE QUERY ABOVE MEN WATCHA DOIN !!!
            var sino = rows[0].account_type;
            var id = rows[0].account_id;
            req.session.sino = sino;
            req.session.Aid = id;
            req.session.email = req.body.username;
            req.session.password = req.body.pass;
            db.query('INSERT into activity_logs(account_id, time, remarks) VALUES ('+id+',"'+currentTime+'", "Logged in");', function(err){
              if (err) {
                console.log(err);
              }
            });
            res.redirect(sino+'/dashboard');
        }
      });
  });

  app.get('/logout', function(req, res){
      db.query('INSERT into activity_logs(account_id, time, remarks) VALUES ('+req.session.Aid+',"'+currentTime+'", "Logged out");', function(err){
        if (err) {
          console.log(err);
        } else {
          req.session.destroy();
          res.redirect('login');
        }
      });
  });

  app.get('/error', function(req, res){
      res.render('error');
  });

};
