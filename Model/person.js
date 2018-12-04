const tools = require("../utilities");

module.exports = {
    getAllUsers: function(req, res, conn) {
        conn.query("select * from person", (err, result) => {
            if(!err) {
                res.send(result);
            }
            else {
                console.log(err);
            }
        })
    },
    addPerson: function (req, res, conn, fname, lname, username, email, image, pwd, phNum, position, team) {
        let record = null;

        conn.query(`insert into person(firstName, lastName, username, email, image, password, phone, position, team) ` + 
        `values("${fname}", "${lname}", "${username}", "${email}", "${image}` + tools.random(1, 10) +`.png", "${pwd}", "${phNum}", "${position}", "${team}")`,
        (err, result) => {
            if(!err) {
                return true;
            }
            else {
                console.log(err);
            }
        });
    }
};