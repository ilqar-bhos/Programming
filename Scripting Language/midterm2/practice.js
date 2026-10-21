const accountLines = [

"AZ1:Leyla:500", "AZ2:Vusal:abc", "AZ3:Nigar:120",

"AZ4:Ali:-5", "AZ5:Aysel:0"

];

const transactions = [

"AZ1:-200", "AZ5:-10", "AZ9:+5", "AZ3:x", "AZ3:+80", "AZ5:40", "AZ3:-200"

];
let array;
var obj = {};
for (let i = 0; i < accountLines.length; i++) {
    array = accountLines[i].split(":");
    if (Number(array[2]>=0)) {
        obj[array[0]] = {
            owner: array[1],
            balance: Number(array[2])
        } 
    }else{
        console.log(`Rejected line: ${array[0]}, ${array[1]}, ${array[2]}`);
    }
}
console.log(obj);
let array_transaction;
console.log();
for (let i = 0; i < transactions.length; i++) {
    array_transaction = transactions[i].split(":");
    if(array_transaction[0] in obj){
        if (array_transaction[1][0]=='-') {
            let value_to_change = Number(array_transaction[1].split("-")[1])
            if(obj[array_transaction[0]].balance-value_to_change>=0){
                obj[array_transaction[0]].balance -= value_to_change;
            }
        
        }else
        if (array_transaction[1][0]=='+') {
                obj[array_transaction[0]].balance += Number(array_transaction[1].split("+")[1]);
        }else
        if (array_transaction[1].split("+").length==array_transaction[1].split("-").length&&!isNaN(Number(array_transaction[1]))) {
            obj[array_transaction[0]].balance += Number(array_transaction[1]);
        }
    }
}
console.log(obj);