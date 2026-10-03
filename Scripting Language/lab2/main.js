console.log(parseInt("15px"));

// const readline = require('readline');
// const r1 = readline.createInterface({
//     input:process.stdin,
//     output:process.stdout
// })
// r1.question("Enter name: ", (name) => {
//     var name_var = name;
//     r1.question("Enter age: ", (age) => {
//         var age_var = age;
//         r1.question("Enter height: ", (height) => {
//             var height_var = height;
//             console.log(`Your name: "${name_var}"\nYour age: "${age_var}"\nYour height: "${height_var}"`);
//             r1.close();
//         })
//     })
// })

const prompt = require("prompt-sync")();
var name = prompt("Enter name: ");
var age = Number(prompt("Enter age: "));
console.log(`Your name: "${name}"\nYour age: "${age}"`);
