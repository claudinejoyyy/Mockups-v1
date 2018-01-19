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
    var data = req.body;
    if(req.session.email){
      if(req.session.sino == 'nurse'){
        connection.query("INSERT INTO patient (name, address, sex, birth_date, age, blood_type) VALUES ("+JSON.stringify(data.name)+","+JSON.stringify(data.address)+","+data.sex+","+data.birth+","+data.age+","+JSON.stringify(data.blood)+");", function(err, rows, fields){
          if(err){
            console.log(err);
          } else {
            res.render('nurse', {data: "hoy"});
          }
        });
      } else {
        res.redirect(req.session.sino);
      }
    } else {
        res.redirect('login');
    }
  });

}
