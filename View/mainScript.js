// Main JavaScript
window.onload = main;

function main() {
    let username = localStorage.getItem("username");
    alert(username);
    document.getElementById("userButton").innerHTML = username;
    getTasks();
}

// Obtaining JSON data
function getTasks() {
    var json = JSON.parse(task);
    var tasks = json.split(",");
    for (var i = 0; i < tasks.length; i++) {
        var tableRow = "<tr><td>" + tasks[i].description + "</td><td></td><td></td><td></td></tr>";
        $("#tasks").innerHTML = tableRow;
        //$(tableRow).appendTo("#sprintTable tbody");
    }
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

//REST apis

