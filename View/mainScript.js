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
  window.location.href = "homePage.html";
}

function createProject() {
  $("#projectModal").modal("hide");
  /*$("#tabs a").closest("li").find("active").removeClass("active");
  $("#storyBoard").find("active").removeClass("active");
  $("#tabs a").closest("li").find("active").addClass("active");
  $("#project").find("active").addClass("active");*/
}

/*function switchTabs() {
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
}*/

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
