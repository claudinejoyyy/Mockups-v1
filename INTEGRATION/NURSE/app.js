var db = require("./database/db.js");
var todo = require('./controllers/routes');
var nurse = require('./controllers/nurseRoute');
var admin = require('./controllers/adminRoute');
var pharmacist = require('./controllers/pharmacistRoute');
var bodyParser = require('body-parser');
var session = require('express-session');
var express = require('express');
var moment = require('moment');
var app = express();

app.locals.moment = require('moment');
app.set('view engine', 'ejs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true}));
app.use(express.static('./public'));
app.use(session({secret: 'shhhhh', cookie: { maxAge: 3600000 }}));


todo(app,db,moment);
nurse(app,db,moment);
admin(app,db,moment);
pharmacist(app,db,moment);

//port
app.listen(3001);
console.log('hello !!');
