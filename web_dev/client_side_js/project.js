// Release 1
console.log("Script is running.");

var photo = document.getElementById("bunny_friends");
photo.style.border = "5px solid black";

var buttons = document.getElementsByTagName("button");
var button = buttons[0]
button.insertAdjacentHTML('beforebegin', '<button id="New_Button">Bunnies VANISH!!</button>');

// Release 2
function removeBunnies(event) {
	photo.hidden = true;
}
var button2 = document.getElementById("New_Button");
button2.addEventListener("click", removeBunnies);

