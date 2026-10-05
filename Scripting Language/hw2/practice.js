const name = "Ilqar";
let age = 20;
const readline = require('readline');
const r1 = readline.createInterface({
    input:process.stdin,
    output:process.stdout
})
r1.question("Enter 1st number: ", (num_a) => {
    r1.question("Enter 2nd number: ", (num_b) => {
        console.log(`Type before conversion: ${typeof(num_a)}`);
        var num1 = Number(num_a);
        var num2 = Number(num_b);
        console.log(`Type after conversion: ${typeof(num1)}`);
        console.log(`Sum: "${num1+num2}"\nDifference: "${num1-num2}"\nProduct: "${num1*num2}"\nQuotient: "${num1/num2}"\nRemainder: "${num1%num2}"\nPower: "${num1**num2}"\n`);
        if (num1>num2) {
            console.log(`First number is greater than second`);
        }else if(num1<num2){
            console.log(`Second number is greater than first`);
        }else{
            console.log(`First and second numbers are equal`);
        }
        if(num1>0&&num2>0){
            console.log("Both numbers are positive");
        }else{
            console.log("At least one number is not positive");
        }
        r1.close();
    })
})
// == compares only value after conversion but === compares both value and type