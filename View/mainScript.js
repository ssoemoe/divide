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
    document.getElementById("storyBoardUpdate").onclick = taskUpdate; 

    // Backlog tab
    document.getElementById("backlogTab").onclick = generateBacklog;

    //document.getElementById("projectUpdate").onclick = projectUpdate;
}

function getUser() {
    let str = localStorage.getItem("user");
    let u = JSON.parse(str);
    return u.firstName;
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

function taskUpdate() {
    alert("Tasks have been updated!");
}

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

    row.insertCell(0).innerHTML = description.value;
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
    localStorage.setItem("task", JSON.stringify(task));
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
    row.insertCell(4).innerHTML = "<button type='button' class='btn btn-outline-danger' onclick='deleteRow()'>Close</button>";
}

function deleteRow() {
    var td = event.target.parentNode;
    var tr = td.parentNode;
    tr.parentNode.removeChild(tr);
}

/*Tasks*/
function getTasksTableContents(tasks) {
    let htmlStr = "";
    for(let i = 0; i < tasks.length; i++) {
        htmlStr += `
<tr align="center">
<td>${tasks[i].description}</td>
<td id="task${tasks[i].id}">${tasks[i].id}</td>
<td>
<select name="status" class="form-control stat" id="taskStatus${tasks[i].id}">
${getTaskOptions(tasks[i])}
</select>
</td><td>${getTaskMemebers(tasks[i])}</td>
<td>${tasks[i].project}</td> 
<td><button type="button" class="btn btn-outline-danger" onclick="deleteRow()">Close</button></td>
</tr>
`;}
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
        let m = users.find(u => u.username === members[i]);
        result += m.firstName +" " + m.lastName;
        if(i !== members.length - 1) {
            result += ",";
        }
    }
    return result;
}

function getProjectName(id, projects) {
    let p = projects.find(ele => ele.id === id);
    return p.description;
}

// Obtaining JSON data
/*function getTasks() {
    var json = JSON.parse(task);
    var tasks = json.split(",");
    for (var i = 0; i < tasks.length; i++) {
        var tableRow = "<tr><td>" + tasks[i].description + "</td><td></td><td></td><td></td></tr>";
        $("#tasks").innerHTML = tableRow;
        //$(tableRow).appendTo("#sprintTable tbody");
    }
}*/

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
