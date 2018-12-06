// Main JavaScript
//window.onload = main;

function main() {
    //document.getElementById("storyBoard").classList.add("fade");

    let user = JSON.parse(localStorage.getItem("user"));
    document.getElementById("user").innerHTML = user.username;//" User";
    getUserPos();

    // Story Board tab
    document.getElementById("createTask").onclick = generateTaskModal;
    document.getElementById("createT").onclick = createTask;
    // Backlog tab
    //    document.getElementById("backlogTab").onclick = generateBacklog;

    //document.getElementById("projectUpdate").onclick = projectUpdate;
}

function getUsername() {
    let str = localStorage.getItem("user");
    let u = JSON.parse(str);
    return u.username;
}

function getUserPos() {
    let user = JSON.parse(localStorage.getItem("user"));
    if (user.position === "Project Manager") {
        document.getElementById("createProject").classList.remove("hide");
        document.getElementById("projectModal").classList.remove("hide");
        document.getElementById("createTask").classList.remove("hide");
        // Project button
        document.getElementById("createProject").onclick = generateProjectModal;
        document.getElementById("createP").onclick = createProject;
    } else {
        document.getElementById("createProject").classList.add("hide");
        document.getElementById("createTask").classList.add("hide");
        document.getElementById("projectModal").classList.add("hide");
    }
}

function generateBacklog() {
    if (localStorage.getItem("task") !== null) {
        // Variables from creating project to generate dynamic table
        var task = localStorage.getItem("task").description;
        var today = new Date();
        var start = today.getMonth()+1 + "/" + today.getDate() + "/" + today.getFullYear();
        var endDate = localStorage.getItem("task").dueDate;
        //var end = endDate.split("/");
        //var days = Math.abs(end[1] - start.getDate());
        var table = document.getElementById("backlogTable");

        // Inserting row to end of table
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
        row.setAttribute("align", "center");

        row.insertCell(0).innerHTML = task;
        row.insertCell(1).innerHTML = start;
        row.insertCell(2).innerHTML = endDate;
        row.insertCell(3).innerHTML = console.log(localStorage.getItem("task").dueDate);
    }
}

function generateMembers(member) {
    var option = document.createElement("option");
    option.text = member;
    option.value = member;
    var select = document.getElementById("taskMembers");
    select.appendChild(option);
}

function generateRelatedProjects(project) {
    var option = document.createElement("option");
    option.text = project;
    option.value = project;
    var select = document.getElementById("taskRelatedProjects");
    select.appendChild(option);
}

function generateTaskModal() {
    document.getElementById("taskForm").reset();
    generateMembers("");
    generateRelatedProjects("");
}

function generateProjectModal() {
    document.getElementById("projectForm").reset();
    generateMembers("");
}

/*function taskUpdate() {
    alert("Tasks have been updated!");
    location.reload(true);
}*/

// Not used
function projectUpdate() {
    alert("Projects have been updated!");
}

function createTask() {
    $("#taskModal").modal("hide");
    addTaskRow();
}

function createProject() {
    $("#projectModal").modal("hide");
    addProjectRow();
}

function addTaskRow() {
    // Variables from creating task to generate dynamic table
    var description = document.getElementById("taskDescription");
    var dueDate = document.getElementById("dueDate");
    var members = document.getElementById("taskMembers");
    var projects = document.getElementById("taskRelatedProjects");
    var table = document.getElementById("sprintTable");

    // Getting list of members
    var membersValue = [];
    for(var i = 0; i < members.length; i++) {
        if (members[i].selected == true) {
            membersValue.push(members[i].value);
        }
    }

    // Getting list of related projects
    var projectsValue = [];
    for(var i = 0; i < projects.length; i++) {
        if (projects[i].selected == true) {
            projectsValue.push(projects[i].value);
        }
    }

    // Inserting row to end of table
    var count = 0;
    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    row.setAttribute("align", "center");

    $.post('http://localhost:4500/api/task/add',   // url
           { 
        description: description.value,
        assigner: getUsername(),
        members: membersValue.join(","),
        createdDate: getTodayDate(),
        dueDate: dueDate.value,
        project: projectsValue.join(",")        
    }, // data to be submit
           function(data, status, jqXHR) {// success callback
        window.location.reload(true);
    });

    /*row.insertCell(0).innerHTML = description.value;
    row.insertCell(1).innerHTML = count;
    // Default value when adding a task would be 'In Progress'
    row.insertCell(2).innerHTML = "<select name='status' class='form-control stat' id='status'>" +
        "<option value='In Progress' selected='selected'>In Progress</option>" +
        "<option value='Complete'>Complete</option></select>"
    row.insertCell(3).innerHTML = membersValue;
    row.insertCell(4).innerHTML = projectsValue;
    row.insertCell(5).innerHTML = "<button type='button' class='btn btn-outline-danger' onclick='deleteRow()'>Close</button>";


    var task = {
        "description": description.value,
        "id": 0,
        "status": "In Progress",
        "dueDate": dueDate.value,
        "members": membersValue,
        "relatedProjects": projectsValue
    };
    localStorage.setItem("task", JSON.stringify(task));*/
}

function addProjectRow() {
    // Variables from creating project to generate dynamic table
    var description = document.getElementById("projectDescription");
    var users = JSON.parse(localStorage.getItem("users"));
    for (var i = 0; i < users.length; i++) {
        if (users[i].username === localStorage.getItem("username")) {
            var manager = users[i].firstName;
        }
    }
    var members = document.getElementById("projectMembers");
    var table = document.getElementById("projectTable");

    // Getting list of members
    var value = [];
    for(var i = 0; i < members.length; i++) {
        if (members[i].selected == true) {
            value.push(members[i].value);
        }
    }

    // Inserting row to end of table
    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    row.setAttribute("align", "center");

    row.insertCell(0).innerHTML = description.value;
    row.insertCell(1).innerHTML = manager;
    row.insertCell(2).innerHTML = value;
    // Default value when adding a project would be 'In Progress'
    row.insertCell(3).innerHTML = "In Progress";
    //    row.insertCell(4).innerHTML = "<button type='button' class='btn btn-outline-danger' onclick='deleteRow()'>Close</button>";
}

function deleteRow() {
    var td = event.target.parentNode;
    var tr = td.parentNode;
    tr.parentNode.removeChild(tr);
}

/*Tasks*/
function getTasksTableContents(tasks, projects) {
    let htmlStr = "";
    tasks = tasks.sort((a,b) => {return a.status > b.status ? 1 : (a.status < b.status ? -1 : 0)});

    for(let i = 0; i < tasks.length; i++) {
        let project = projects.find(p => p.id === Number(tasks[i].project.trim()));
        htmlStr += `
<tr align="center">
<td width="250">${tasks[i].description}</td>
<td id="task${tasks[i].id}">${tasks[i].id}</td>
<td>
<select name="status" class="form-control stat" id="taskStatus${tasks[i].id}">
${getTaskOptions(tasks[i])}
</select>
</td><td>${getTaskMemebers(tasks[i])}</td>
<td>${project.description}</td> 
</tr>
`;}
    //    <td><button type="button" class="btn btn-outline-danger" onclick="deleteRow()">Close</button></td>
    return htmlStr;
}

function getTaskOptions(task) {
    if(task.status == 0) {
        return `<option value="In Progress" selected="selected">In Progress</option>
<option value="Complete">Complete</option>`;
    }
    else {
        return `<option value="In Progress">In Progress</option>
<option value="Complete" selected="selected">Complete</option>`; 
    }
}

function getTaskMemebers(task) {
    let users = JSON.parse(localStorage.getItem("users"));
    let members = task.members.split(",");
    let result = "";
    for (let i = 0; i < members.length; i++) {
        if(members[i] === "") {
            continue;
        }
        let m = users.find(u => u.username === members[i].trim());
        result += m.firstName +" " + m.lastName;
        if(i !== members.length - 1) {
            result += ",";
        }
    }
    return result;
}

function getProjectMembers(project) {
    let users = JSON.parse(localStorage.getItem("users"));
    let members = project.members.split(",");
    let result = "";
    for (let i = 0; i < members.length; i++) {
        let m = users.find(u => u.username === members[i].trim());
        result += m.firstName +" " + m.lastName;
        if(i !== members.length - 1) {
            result += ",";
        }
    }
    return result;
}

function getManager(mgr) {
    let users = JSON.parse(localStorage.getItem("users"));
    let manager = (users.find(u => u.username === mgr))
    return manager.firstName + " " + manager.lastName;
}

function fillProjectTable(projects) {
    let htmlStr = "";
    for(let i = 0; i < projects.length; i++) {
        htmlStr += `
<tr align="center">
<td>${projects[i].id}</td>
<td>${projects[i].description}</td>
<td>${getManager(projects[i].manager)}</td>
<td>${getProjectMembers(projects[i])}</td>
</tr>
`;}

    //<td><button type="button" class="btn btn-outline-danger" onclick="deleteRow()">Close</button></td>
    return htmlStr;
}

function fillBackLog(tasks) {
    let htmlStr = "";
    completedTasks = tasks.filter(t => datediff(parseDate(t.due)) < 0);
    tasks = tasks.filter(t => datediff(parseDate(t.due)) >= 0);
    tasks = tasks.sort(function(a,b) {
        let r1 = datediff(parseDate(a.due));
        let r2 = datediff(parseDate(b.due));
        return  r1 > r2 ? 1 : (r1 < r2? -1 : 0);
    });

    for(let i = 0; i < tasks.length; i++) {                 
        htmlStr += `<tr align="center">
<td>${tasks[i].description}</td>
<td>${tasks[i].id}</td>
<td>${tasks[i].created}</td>
<td>${tasks[i].due}</td>
<td>${datediff(parseDate(tasks[i].due))}</td></tr>`;
    }    

    for(let i = 0; i < completedTasks.length; i++) {                 
        htmlStr += `<tr align="center">
<td>${completedTasks[i].description}</td>
<td>${completedTasks[i].id}</td>
<td>${completedTasks[i].created}</td>
<td>${completedTasks[i].due}</td>
<td>${getDateCompDes(completedTasks[i].status)}</td></tr>`;
    }  

    return htmlStr;
}

function getDateCompDes(status) {
    if(status == 0) return "Overdue"
    else return "Complete";
}

function switchTabs() {
    //console.log("switch");
    var homeTab = document.getElementById("homeTab");
    var storyBoard = document.getElementById("storyBoard");
    homeTab.classList.remove("active");
    storyBoard.classList.remove("active");

    var projectTab = document.getElementById("projectTab");
    var project = document.getElementById("project");
    projectTab.classList.add("active");
    projectTab.classList.add("show");
    project.classList.add("active");
    project.classList.add("show");
}

// Drag and drop events (not used)
function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
}

function getTodayDate() {
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();

    if(dd<10) {
        dd = '0'+dd
    } 

    if(mm<10) {
        mm = '0'+mm
    } 

    today = mm + '-' + dd + '-' + yyyy;
    return today;
}

function parseDate(str) {
    var mdy = str.split('-');
    return new Date(mdy[2], mdy[0]-1, mdy[1]);
}

function datediff(second) {
    // Take the difference between the dates and divide by milliseconds per day.
    // Round to nearest whole number to deal with DST.
    let result =  Math.round((second-parseDate(getTodayDate()))/(1000*60*60*24));
    return result;
}
