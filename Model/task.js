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
    },
    addTask: function(req, res, conn, des, status, createdDate, dueDate, members, assigner, project) {
        let record = null;

        conn.query(`insert into task(id, description, status, created, due, members, assigner, project) ` + 
        `values(null, "${des}", ${status}, "${createdDate}", "${dueDate}", "${members}", "${assigner}", "${project}")`,
        (err, result) => {
            if(!err) {
                return true;
            }
            else {
                console.log(err);
            }
        });
    },
    updateStatus(req, res, conn, id, status) {
        conn.query(`update task set status=${status} where id=${id}`,
        (err, result)=> {
            if(!err) {
                return true;
            }
            else {
                console.log(err);
            }
        });
    }   
}