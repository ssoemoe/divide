// Main JavaScript
window.onload = main;

function main() {
  //document.getElementById("storyBoard").classList.add("fade");
  document.getElementById("storyBoardUpdate").onclick = taskUpdate;
  document.getElementById("backlogUpdate").onclick = taskUpdate;
  document.getElementById("projectUpdate").onclick = projectUpdate;
  document.getElementById("createTask").onclick = createTask;
  document.getElementById("createProject").onclick = createProject;
}

function taskUpdate() {
  alert("Tasks have been updated!");
}

function projectUpdate() {
  alert("Projects have been updated!");
}

function createTask() {
  $("#taskModal").modal("hide");
}

function createProject() {
  $("#projectModal").modal("hide");
}

function addTaskRow() {
  var description = document.getElementById("taskDescription").value;
}

function addTaskTable() {

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
  console.log("switch");
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

// Drag and drop events
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
