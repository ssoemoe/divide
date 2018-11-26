const express = require("express");
const path = require("path");
const port = 4500;
const app = express();
const bodyParser = require("body-parser");
const methodOverride = require("method-override");
const db = require("./Model/dbtest");
const mysql = require("./Model/model");
mysql.startConnection();
let conn = mysql.getConnection();

app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(methodOverride('_method'));

//routers
let sendLoginPage = (req, res) => res.sendFile(path.join(__dirname + "/View/login.html"));

app.get('/', sendLoginPage);
app.get("/login.html", sendLoginPage);
app.get("/homepage.html", (req, res) => res.sendFile(path.join(__dirname + "/View/homePage.html")));

//db testing
app.get("/dbtest", (req, res) => {db.getPerson(req, res, conn)});

/*app.put();
app.delete();
app.post();*/
app.listen(port, ()=>console.log(`The application is running on localhost: ${port}`));
