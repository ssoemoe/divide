const express = require("express");
const path = require("path");
const port = 4500;
const app = express();
const bodyParser = require("body-parser");
const methodOverride = require("method-override");
const task = require("./Model/task");
const person = require("./Model/person");
const project = require("./Model/project");
const db = require("./Model/dbtest");
const cors = require('cors');

app.use(cors());
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

const mysql = require("./Model/model");
mysql.startConnection();
let conn = mysql.getConnection();

//routers
app.get("/styleSheet.css", (req, res) => res.sendFile(path.join(__dirname + "/View/styleSheet.css")));
app.get("/Images/divide.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/divide.png")));
app.get("/Images/avatarImages/:file", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages" + req.params.file)));
app.get('/', (req, res) => res.sendFile(path.join(__dirname + "/View/welcome.html")));
app.get("/login.html", (req, res) => res.sendFile(path.join(__dirname + "/View/login.html")));
app.get("/userProfile.html", (req, res) => res.sendFile(path.join(__dirname + "/View/userProfile.html")));
app.get("/signup.html", (req, res)=>res.sendFile(path.join(__dirname + "/View/signup.html")));
app.get("/homepage.html", (req, res) => res.sendFile(path.join(__dirname + "/View/homePage.html")));
app.post("/homepage.html", (req, res) => res.sendFile(path.join(__dirname + "/View/homePage.html")));
app.get("/welcome.html", (req, res) => res.sendFile(path.join(__dirname + "/View/welcome.html")));

//tasks
app.get("/api/tasks/:username", (req, res) => {
    task.getAllTasks(res, conn, req.params.username);
});

//projects
app.get("/api/projects/:username", (req, res) => {
    project.getAllProjects(res, conn, req.params.username);
});

//person
app.get("/api/person/users", (req, res) => {person.getAllUsers(req, res, conn);});
app.post("/api/person/add", (req, res) => {
    let form = req.body;
    person.addPerson(req, res, conn, form.firstName, form.lastName, form.user, form.emailAdd, form.avatar, form.pwd,
        form.phone, form.pos, form.team);
    res.status(201).sendFile(path.join(__dirname + "/View/homePage.html"));
});

//testing
app.get("/dbtest", (req, res) => {db.getPerson(req, res, conn)});

app.listen(port, ()=>console.log(`The application is running on localhost: ${port}`));
