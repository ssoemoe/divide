const express = require("express");
const path = require("path");
const port = 4500;
const app = express();
const bodyParser = require("body-parser");
const methodOverride = require("method-override");
const utilities = require("./utilities");
const person = require("./Model/person");
const db = require("./Model/dbtest");
const cors = require('cors');
const project = require("./Model/project");
const task = require("./Model/task");

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
let sendLoginPage = (req, res) => res.sendFile(path.join(__dirname + "/View/login.html"));

const mysql = require("./Model/model");
mysql.startConnection();
let conn = mysql.getConnection();

//routers
app.get('/', (req, res) => res.sendFile(path.join(__dirname + "/View/welcome.html")));
app.get("/styleSheet.css", (req, res) => res.sendFile(path.join(__dirname + "/View/styleSheet.css")));
app.get("/Images/divide.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/divide.png")));
app.get("/login.html", (req, res) => res.sendFile(path.join(__dirname + "/View/login.html")));
app.get("/userProfile.html", (req, res) => res.sendFile(path.join(__dirname + "/View/userProfile.html")));
app.get("/signup.html", (req, res)=>res.sendFile(path.join(__dirname + "/View/signup.html")));
app.get("/homepage.html", (req, res) => res.sendFile(path.join(__dirname + "/View/homePage.html")));
app.post("/homepage.html", (req, res) => res.sendFile(path.join(__dirname + "/View/homePage.html")));
app.get("/welcome.html", (req, res) => res.sendFile(path.join(__dirname + "/View/welcome.html")));

//person
app.get("/api/person", (req, res) => {person.getAllUsers(req, res, conn);});
app.post("/api/person/add", (req, res) => {
    let form = req.body;
    person.addPerson(req, res, conn, form.firstName, form.lastName, form.user, form.emailAdd, form.avatar, form.pwd,
        form.phone, form.pos, form.team);
    res.status(201).sendFile(path.join(__dirname + "/View/homePage.html"));
});
/* app.put("/api/person/update", (req, res) => {

}) */

//project
app.get("/api/project", (req, res) => {project.getAllProjects(req, res, conn)});
app.post("/api/project/add", (req, res) => {
    let form = req.body; 
    project.addProject(req, res, conn, form.description, form.manager, form.members);
    res.status(201).send("true");
});

//tasks
app.get("/api/task", (req, res) => {
    task.getTasks(req, res, conn);
});
app.post("/api/task/add", (req, res)=> {
    let form = req.body;
    task.addTask(req, res, conn, form.description, 0, form.createdDate, form.dueDate, form.members,
        form.assigner, form.project);
    res.status(201).send("created");
})
app.put("/api/task/update", (req, res)=> {
    let form = req.body;
    task.updateStatus(req, res, conn, form.id, form.status);
    res.status(200).send("Updated!");
})

//testing
app.get("/dbtest", (req, res) => {db.getPerson(req, res, conn)});

app.listen(port, ()=>console.log(`The application is running on localhost: ${port}`));
