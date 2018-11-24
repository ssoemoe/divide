const express = require("express");
const app = express();
const path = require ("path");
const port = 4500;

/* To run the Node application, go to CMD, change the directory to the application folder
and run `node server`*/

app.get('/', (req, res) => res.sendFile(path.join(__dirname + "/View/login.html")));
app.listen(port, ()=>console.log(`The application is running on localhost:${port}`));
