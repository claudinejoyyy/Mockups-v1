var todo = require('./controllers/routes');
var nurse = require('./controllers/nurseRoute');
var admin = require('./controllers/adminRoute');
var pharmacist = require('./controllers/pharmacistRoute');
var bodyParser = require('body-parser');
var session = require('express-session');
var express = require('express');
var app = express();

app.set('view engine', 'ejs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true}));
app.use(express.static('./public'));
app.use(session({secret: 'shhhhh', cookie: { maxAge: 3600000 }}));


todo(app);
nurse(app);
admin(app);
pharmacist(app);

//port
app.listen(3000);
console.log('hello !!');
