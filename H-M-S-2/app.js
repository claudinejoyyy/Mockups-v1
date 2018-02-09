var db = require("./database/db.js");
var login = require('./controllers/routes');
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

//PARA sa DASHBOARD of all MODULES!!!

var name   = "SELECT name FROM user_accounts where account_id = ?;";
var counts = "SELECT (SELECT count(patient_id) er FROM admit WHERE department = 'OPD') as OPD, "
            +"(SELECT count(patient_id) er FROM admit WHERE department = 'ward') as WARD,"
            +"(SELECT count(name) pCount FROM patient) as totalRegisteredPatients,"
            +"(SELECT count(patient_id) admitted FROM admit) as currentlyAdmitted;";
var chart  = "SELECT  (SELECT count(patient_id) from patient where patient_type = 'cadet') as cadet,"
            +"(SELECT count(patient_id) from patient where patient_type = 'military officer') as military_officer,"
            +"(SELECT count(patient_id) from patient where patient_type = 'military dependent') as military_dependent,"
            +"(SELECT count(patient_id) from patient where patient_type = 'civilian') as civilian,"
            +"(SELECT count(patient_id) from patient where patient_type = 'authorized civilian') as authorized_civilian;";

var whoCurrentlyAdmitted = "SELECT p.name, a.patient_id FROM admit a INNER JOIN patient p USING(patient_id);";
var whoOPD               = "SELECT p.name FROM admit INNER JOIN patient p USING(patient_id) WHERE department = 'opd';";
var whoWARD              = "SELECT p.name FROM admit INNER JOIN patient p USING(patient_id) WHERE department = 'ward';";



login(app,db,moment);
nurse(app,db,moment,name,counts,chart,whoCurrentlyAdmitted,whoOPD,whoWARD);
admin(app,db,moment);
pharmacist(app,db,moment);

//port
app.listen(3000);
console.log('hello !!');
