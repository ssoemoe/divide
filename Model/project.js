const tools = require("../utilities");

module.exports = {
    getAllProjects: function(req, res, conn) {
        conn.query("select * from project", (err, result) => {
            if(!err) {
                res.send(result);
            }
            else {
                console.log(err);
            }
        })
    },
    addProject: function(req, res, conn, des, manager, members) {
        let record = null;

        conn.query(`insert into project(id, description, manager, members, status) ` + 
        `values(null, "${des}", "${manager}", "${members}", 0)`,
        (err, result) => {
            if(!err) {
                return true;
            }
            else {
                console.log(err);
            }
        });
    }
}