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

function Car(year, brand, color, honk){
	this.year = year;
    this.brand = brand;
	this.color = color;
	this.honk = honk;
    this.honk = function() { console.log ("HOONK!"); };
}

var car1 = new Car(2016, "Porsche", "Red");
console.log(car1);
car1.honk();

var car2 = new Car(2016, "Fiat", "White");
console.log(car2);
car2.honk();