const tools = require("../utilities");

module.exports = {
    getAllTasks: function(res, connection, username) {
        connection.query("select * from task", (err, result) => {
            if(!err) {
                let tasks = null;
                tasks = result.filter(p => p.assignedMembers.includes(username) || p.assigner === username);
                res.send(tasks);
            }
            else {
                console.log(err);
            }
        })
    }
};