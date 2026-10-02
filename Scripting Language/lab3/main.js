

// let prompt = require("prompt-sync")();
// a = Number(prompt("Enter number 1: "));
// b = Number(prompt("Enter number 2: "));
// op = prompt("Enter operator: ");
// var result;
// if (op == "+") {
//   result = a + b;
// } else if (op == "-") {
//   result = a - b;
// } else if (op == "*") {
//   result = a * b;
// } else if (op == "/") {
//   result = a / b;
// } else if (op == "%") {
//   result = a % b;
// } else {
//   console.log("Add one of these operators (+ - * / %)");
// }

// if (op == "+") result = a + b 
// else if (op == "-") result = a - b;
// else if (op == "*") result = a * b;
// else if (op == "/") result = a / b;
// else if (op == "%") result = a % b;
// else console.log("Add one of these operators (+ - * / %)");

// switch(op){
//     case '+':
//         result=a+b;
//         break;
//     case '-':
//         result=a-b;
//         break;
//     case '*':
//         result=a*b;
//         break;
//     case '/':
//         result=a/b;
//         break;
//     case '%':
//         result=a%b;
//         break;
//     default:
//         console.log("Add one of these operators (+ - * / %)");
//         break;
// }

// console.log(`Result: ${result}`);



console.log("*********************************************************************************");


// let prompt1 = require("prompt-sync")();
// n_day = Number(prompt1("Enter number 1: "));
// var result1;
// switch(n_day){
//     case 1:
//         result1='Monday';
//         break;
//     case 2:
//         result1='Tuesday';
//         break;
//     case 3:
//         result1='Wendsday';
//         break;
//     case 4:
//         result1='Thursday';
//         break;
//     case 5:
//         result1='Friday';
//         break;
//     case 6:
//     case 7:
//         result1='Weekends';
//         break;//remove break and type 6
//     case 8:
//         console.log("error");
//         break;
//     default:
//         console.log("Next time enter proper number 1-7!");
//         break;
// }
// console.log(`Result: ${result1}`);

console.log("*********************************************************************************");
// let prompt = require("prompt-sync")({ sigint: true }); //used to ctrl+c to break terminal
// var op;
// var result;
// while(op!='exit'){
// a = Number(prompt("Enter number 1: "));
// b = Number(prompt("Enter number 2: "));
// op = prompt("Enter operator: ");
// switch(op){
//     case '+':
//         result=a+b;
//         break;
//     case '-':
//         result=a-b;
//         break;
//     case '*':
//         result=a*b;
//         break;
//     case '/':
//         result=a/b;
//         break;
//     case '%':
//         result=a%b;
//         break;
//     default:
//         console.log("Add one of these operators (+ - * / %)");
//         break;
// }

// console.log(`Result: ${result}`);
// }


console.log("*********************************************************************************");
for (let i = 1; i < 11; i++) {
    for (let j = 1; j < 11; j++) {
        console.log(`${i}*${j}=${i*j}`);
    }
}