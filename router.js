const express = require("express");
var router = express.Router();

const path = require("path");
const person = require("./Model/person");
const db = require("./Model/dbtest");
const project = require("./Model/project");
const task = require("./Model/task");
const team = require("./Model/team");
const mysql = require("./Model/model");
mysql.startConnection();
let conn = mysql.getConnection();

router.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    next();
   });
   
//routers
router.get('/', (req, res) => res.sendFile(path.join(__dirname + "/View/welcome.html")));
router.get("/styleSheet.css", (req, res) => res.sendFile(path.join(__dirname + "/View/styleSheet.css")));
router.get("/mainScript.js", (req, res) => res.sendFile(path.join(__dirname + "/View/mainScript.js")));
router.get("/Images/divide.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/divide.png")));
router.get("/login.html", (req, res) => res.sendFile(path.join(__dirname + "/View/login.html")));
router.get("/userProfile.html", (req, res) => res.sendFile(path.join(__dirname + "/View/userProfile.html")));
router.get("/signup.html", (req, res)=>res.sendFile(path.join(__dirname + "/View/signup.html")));
router.get("/homepage.html", (req, res) => res.sendFile(path.join(__dirname + "/View/homePage.html")));
router.post("/homepage.html", (req, res) => res.sendFile(path.join(__dirname + "/View/homePage.html")));
router.get("/welcome.html", (req, res) => res.sendFile(path.join(__dirname + "/View/welcome.html")));

//person
router.get("/api/person", (req, res) => {person.getAllUsers(req, res, conn);});
router.post("/api/person/add", (req, res) => {
    let form = req.body;
    if(form.pos === "Project Manager") {
        team.updateManager(req, res, conn, form.teams, form.user);
    }
    else {
        team.updateMember(req, res, conn, form.teams, form.user);
    }
    person.addPerson(req, res, conn, form.firstName, form.lastName, form.user, form.emailAdd, form.avatar, form.pwd,
        form.phone, form.pos, form.team);
    
    res.status(201).redirect("http://localhost:4500/homePage.html");
});

//team
router.get("/api/team", (req,res)=>{team.getTeam(req, res, conn)});
router.put("/api/team/updateMem", (req, res)=> {
    let form = req.body; 
    team.updateMember(req, res, conn, form.teamName, form.members);
    res.status(201).send("true");
});
router.put("/api/team/updateManager", (req, res)=> {
    let form = req.body; 
    team.updateManager(req, res, conn, form.teamName, form.manager);
    res.status(201).send("true");
});

//project
router.get("/api/project", (req, res) => {project.getAllProjects(req, res, conn)});
router.post("/api/project/add", (req, res) => {
    let form = req.body; 
    project.addProject(req, res, conn, form.description, form.manager, form.members);
    res.status(201).send("true");
});

//tasks
router.get("/api/task", (req, res) => {
    task.getTasks(req, res, conn);
});
router.post("/api/task/add", (req, res)=> {
    let form = req.body;
    task.addTask(req, res, conn, form.description, 0, form.createdDate, form.dueDate, form.members,
        form.assigner, form.project);
    res.status(201).send("created");
})
router.post("/api/task/update", (req, res)=> {
    let form = req.body;
    task.updateStatus(req, res, conn, form.id, form.status);
    res.status(200).send("Updated!");
})

//testing
router.get("/dbtest", (req, res) => {db.getPerson(req, res, conn)});


//images
router.get("/View/Images/avatarImages/avatar1.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages/avatar1.png")));
router.get("/View/Images/avatarImages/avatar2.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages/avatar2.png")));
router.get("/View/Images/avatarImages/avatar3.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages/avatar3.png")));
router.get("/View/Images/avatarImages/avatar4.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages/avatar4.png")));
router.get("/View/Images/avatarImages/avatar5.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages/avatar5.png")));
router.get("/View/Images/avatarImages/avatar6.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages/avatar6.png")));
router.get("/View/Images/avatarImages/avatar7.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages/avatar7.png")));
router.get("/View/Images/avatarImages/avatar8.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages/avatar8.png")));
router.get("/View/Images/avatarImages/avatar9.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages/avatar9.png")));
router.get("/View/Images/avatarImages/avatar10.png", (req, res) => res.sendFile(path.join(__dirname + "/View/Images/avatarImages/avatar10.png")));

module.exports = router;