const tools = require("../utilities");

module.exports = {
    getAllProjects: function(res, connection, username) {
        connection.query("select * from project", (err, result) => {
            if(!err) {
                let projects = null;
                projects = result.filter(p => p.members.includes(username) || p.manager === username);
                res.send(projects);
            }
            else {
                console.log(err);
            }
        })
    }
};