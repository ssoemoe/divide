const mysql = require("mysql");
const connection = mysql.createConnection({
    host : "localhost",
    user : "ssoemoe",
    password : "root",
    database: "divide"
});

module.exports = {
    startConnection : () => connection.connect((err) => {
        if(!err) 
            console.log("DB successfully connected!");
        else
            console.log("DB conneciton failed!");
    }),
    getConnection : () => connection,
    endConnection : () => connection.end()
};