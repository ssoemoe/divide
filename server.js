const express = require("express");
const path = require("path");
const port = 4500;
const app = express();
const bodyParser = require("body-parser");
const methodOverride = require("method-override");
const utilities = require("./utilities");
const db = require("./Model/dbtest");
const cors = require('cors')

app.use(cors())
app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(methodOverride('_method'));
app.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    next();
   });

//functions
let sendLoginPage = (req, res) => res.sendFile(path.join(__dirname + "/View/login.html"));

const mysql = require("./Model/model");
mysql.startConnection();
let conn = mysql.getConnection();

//routers
app.get('/', sendLoginPage);
app.get("/login.html", sendLoginPage);
app.get("/homepage.html", (req, res) => res.sendFile(path.join(__dirname + "/View/homePage.html")));
app.get("/welcome.html", (req, res) => res.sendFile(path.join(__dirname + "/View/welcome.html")));

//person
// app.post("/api/person/add", (req, res) => {});

//testing
app.get("/dbtest", (req, res) => {db.getPerson(req, res, conn)});

app.listen(port, ()=>console.log(`The application is running on localhost: ${port}`));
