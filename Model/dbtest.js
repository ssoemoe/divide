const mysql = require("./model");

module.exports = {
    getPerson: (req, res, connection) => {
        connection.query("select image from person where username=?", "adavis", (err, rows)=>{
            if(!err) {
                res.send(rows);
            }
            else {
                console.log(err);
            }
        });
    }
}