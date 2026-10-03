const prompt = require('prompt-sync')();
var time_in_seconds = Number(prompt("Enter time in seconds: "));
let hours=0;
let seconds=0;
let minutes=0;
for (let index = 0; index < time_in_seconds; index++) {
    seconds++;
    if(seconds==60){
        seconds=0;
        minutes++;
        if (minutes==60) {
            minutes=0;
            hours++;
        }
    }
}
console.log(`${time_in_seconds} seconds = ${hours} hours, ${minutes} minutes, ${seconds} seconds.`);
if (hours>0) {
    console.log("The duration is at least one hour");
}else{
    console.log("The duration is less than an one hour");
}
if (hours>=24){
    console.log("The duration is not shorter than one full day");
}else{
    console.log("The duration is shorter than one full day");
}