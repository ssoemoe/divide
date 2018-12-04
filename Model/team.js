module.exports = {
    getTeam: function(req, res, conn) {
        conn.query("select * from team", (err, result) => {
            if(!err) {
                res.send(result);
            }
            else {
                console.log(err);
            }
        })
    },
    updateMember: function(req, res, conn, teamName, members) {
        conn.query(`update team set members=CONCAT_WS( ",", IFNULL(members," ") ,"${members}") where teamName="${teamName}"`,
        (err, result) => {
            if(!err) {
                return true;
            }
            else {
                console.log(err);
            }
        });
    },
    updateManager: function(req, res, conn, teamName, mgr) {
        conn.query(`update team set manager="${mgr}" where teamName="${teamName}"`,
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