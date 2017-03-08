//Release 0
//Create A Function To Find The Longest Word In The Array
var random = ['cat', 'woman', 'pencil'];

random.sort(function(a, b){
  return a.length - b.length
}); 

//Release 1
//Find A Key-Value Match
var human2 = {name: "Alice", age: 24}

function equal(a,b) {
  if (Object.is(a["name"], b["name"]) || Object.is(a["age"], b["age"])){
  	return true
  } else {
  	return false
  }
}
//Driver Code
//console.log(equal("person", "anotherPerson"))

//Release 2
//Generate Random Test Data
function randomNumber() {
  return (Math.floor(Math.random() * 10) + 1);
}
//Driver Code 
//console.log(randomNumber())

function randomLetter() {
  return String.fromCharCode(97 + Math.floor(Math.random() * 26));
}
//Driver Code
//console.log(randomLetter())


//Function For Random Words
function randomString(integer) {
var array = [];
  for (i=0; i < integer; i++) {
    var word = "";
    var wordLength = randomNumber();
    for (x=0; x < wordLength; x++) {
      word += randomLetter();
    }
    array.push(word);
  }
  return array;
}
//Function To Sort Words In The Array For Length
//And Then Print The Longest Word To The Console
for (y=0; y < 10; y++){
  var randoms = (randomString(randomNumber()));
  console.log("Here's your array:")
  console.log(randoms);
    randoms.sort(function(a,b){
      return a.length - b.length
    });
 console.log("Presenting, your longest word:")
 console.log(randoms.pop())
}