module.exports = {
    getTasks: function(req, res, conn) {
        conn.query("select * from task", (err, result) => {
            if(!err) {
                res.send(result);
            }
            else {
                console.log(err);
            }
        })
    }    
}