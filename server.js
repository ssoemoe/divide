const express = require("express");
const path = require("path");
const port = 450;
const app = express();
const bodyParser = require("body-parser");
const methodOverride = require("method-override");

app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(methodOverride('_method'));

//routers

app.get('/', (req, res) => res.sendFile(path.join(__dirname + "/View/login.html")));
app.listen(port, ()=>console.log(`The application is running on localhost: ${port}`));
