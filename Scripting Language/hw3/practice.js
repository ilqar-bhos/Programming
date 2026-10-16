const readline = require('readline');
const r1 = readline.createInterface({
    input:process.stdin,
    output:process.stdout
})
r1.question("Enter score:", (score) => {
    if (score>=90) {
        console.log(`For the score: ${score} you get A`);
    }else if(score>=70){
        console.log(`For the score: ${score} you get B`);
    }else if(score>=50){
        console.log(`For the score: ${score} you get C`);
    }else{
        console.log(`For the score: ${score} you get F`);
    }
    switch (Math.floor(score/10)) {
        case 10:
        case 9:
            console.log(`For the score: ${score} you get A`);
            break;
        case 8:
        case 7:
            console.log(`For the score: ${score} you get B`);
            break;
        case 6:
        case 5:
            console.log(`For the score: ${score} you get C`);
            break;
        default:
            console.log(`For the score: ${score} you get F`);
            break;
    }
    for (let i = 1; i < 21; i++) {
        if (i%2==0) {
            console.log(i);
        }
    }
    const prompt = require("prompt-sync")({sigint:true});
    while (true) {
        let number = prompt("Enter a number: ");
        if(number==0){
            break;
        }
    }
    r1.close();
});

let numbers=[1,2,3,5,7,9];
for(let i = 0; i<numbers.length;i++){
    if (numbers[i]==5) {
        console.log(`Found 5`);
        break;
    }
}
let numbers2=[-1,-2,-3,5,7,9];
for(let i = 0; i<numbers2.length;i++){
    if (numbers2[i]<0) {
        continue;
    }else{
        console.log(numbers2[i]);
    }
}
for (let i = 1; i < 6; i++) {
    for (let j = 1; j < 11; j++) {
        console.log(`${i}*${j}=${i*j}`)
    }
}

//difference between while and do while is that while checks before each iteration do while checks after each iteration
//example for do while can be user input, user types something and we check it after he typed.