//Release 0
var colors = ["forest green", "lilac", "horizon blue", "champagne"]

var names = ["Not Ed", "Princes Sparkles", "Fred", "Somnambulist"]

colors.push("silver");
names.push("Lioness");

//Release 1
//Build An Object
var horses = {name: " Not Ed", color: " champagne"};
console.log("The horse is named" + horses['name'] + "." + " " + "They are" + horses['color'] + ".");

//Release 2
//Build A Constructor (Among Other Things)
var barn = {};
for (var i = 0; i < names.length; i++) {
	barn[names[i]] = colors[i];
}

console.log(barn);
console.log(colors);
console.log(names);

function Car(year, brand, color, beep){
	this.year = year;
    this.brand = brand;
	this.color = color;
	this.beep = beep;
    this.beep = function() { console.log ("BEEEEEP!"); };
}

var car1 = new Car(2016, "Subaru STi", "Gray");
console.log(car1);
car1.beep();

var car2 = new Car(2016, "Acura", "White");
console.log(car2);
car2.beep();