const prompt = require("prompt-sync")();
var any_value = prompt("Type any value, such as a number, a word, an empty line or true: ");
console.log(any_value, typeof any_value);


var number = Number(any_value);
console.log(number, typeof number);


var bool = Boolean(any_value);
console.log(bool);


var add10 = any_value + 10;
console.log(add10);


var add10_to_number = Number(any_value) + 10;
console.log(add10_to_number); 


console.log(0==any_value); //false
console.log(0===any_value); //false


console.log(number==any_value); //true
console.log(number===any_value); //false