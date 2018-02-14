var db = require("./database/db.js");
var login = require('./controllers/routes');
var nurse = require('./controllers/nurseRoute');
var admin = require('./controllers/adminRoute');
var pharmacist = require('./controllers/pharmacistRoute');
var bodyParser = require('body-parser');
var session = require('express-session');
var express = require('express');
var moment = require('moment');
var helmet = require('helmet');
var app = express();

app.locals.moment = require('moment');
app.set('view engine', 'ejs');
app.use(helmet.noCache());
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
//COUNT
var whoOPD               = "SELECT p.name FROM admit INNER JOIN patient p USING(patient_id) WHERE department = 'opd';";
var whoWARD              = "SELECT p.name FROM admit INNER JOIN patient p USING(patient_id) WHERE department = 'ward';";
var whoCurrentlyAdmitted = "SELECT p.name, a.patient_id FROM admit a INNER JOIN patient p USING(patient_id);";
// GRAPH
var currentTime = moment().format('YYYY');
var monthlyPatientCount  = 'SELECT (SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-01-01 00:00:00" and "'+currentTime+'-02-01 00:00:00" and type = "add") as JAN,'
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-02-01 00:00:00" and "'+currentTime+'-03-01 00:00:00" and type = "add") as FEB,'
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-03-01 00:00:00" and "'+currentTime+'-04-01 00:00:00" and type = "add") as MARCH,'
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-04-01 00:00:00" and "'+currentTime+'-05-01 00:00:00" and type = "add") as APRIL,'
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-05-01 00:00:00" and "'+currentTime+'-06-01 00:00:00" and type = "add") as MAY,'
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-06-01 00:00:00" and "'+currentTime+'-07-01 00:00:00" and type = "add") as JUNE,'
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-07-01 00:00:00" and "'+currentTime+'-08-01 00:00:00" and type = "add") as JULY,'
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-08-01 00:00:00" and "'+currentTime+'-09-01 00:00:00" and type = "add") as AUGUST,'
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-09-01 00:00:00" and "'+currentTime+'-010-01 00:00:00" and type = "add") as SEPTEMBER,'
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-010-01 00:00:00" and "'+currentTime+'-011-01 00:00:00" and type = "add") as OCTOBER,'
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-011-01 00:00:00" and "'+currentTime+'-012-01 00:00:00" and type = "add") as NOVEMBER;';
                          +'(SELECT count(logs_id) from activity_logs WHERE time BETWEEN "'+currentTime+'-012-01 00:00:00" and "'+currentTime+'-001-01 00:00:00" and type = "add") as DECEMBER;';
//TO DO LIST
//OTHERS
var patientList          = "SELECT * from patient;";
var doctorList           = "SELECT * FROM user_accounts WHERE account_type = 'doctor';";
var availableBeds        = "SELECT b.bed_id, p.patient_type, p.name, b.status, b.allotment_timestamp from bed b LEFT JOIN patient p USING(patient_id) where b.status = 'Unoccupied';";

var currentTime = moment().format('YYYY-MM-DD HH:mm:ss');
login(app,db,currentTime);
nurse(app,db,currentTime,name,counts,chart,whoCurrentlyAdmitted,whoOPD,whoWARD,monthlyPatientCount,patientList,doctorList);
admin(app,db,currentTime,name,counts,chart,whoCurrentlyAdmitted,whoOPD,whoWARD,monthlyPatientCount,patientList,availableBeds);
pharmacist(app,db,currentTime);

//port
app.listen(3000);
console.log('hello !!');
