const mysql = require("./model");

module.exports = {
    getPerson: (req, res, connection) => {
        connection.query("select * from team", (err, rows)=>{
            if(!err) {
                res.send(rows);
            }
            else {
                console.log(err);
            }
        });
    }
}