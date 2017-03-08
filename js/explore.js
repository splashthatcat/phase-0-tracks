//Let's create a function to reverse a string.
// 1.) Declare the function.
function reverse (string) {
// 2.) Declare the variable, and then use said variable in a for loop.
	var newString = "";
	for (var i = string.length - 1; i >= 0; i--) {
		newString += string[i];
	}
// 3.) Return the new string.
	return newString;
}
// 4.) Add the driver code that calls the function and prints the variable.
var backwards = reverse ("Hello world!");
if (true) {
	console.log(backwards);
}