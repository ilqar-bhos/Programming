const accountLines = [

    "AZ1:Leyla:500", "AZ2:Vusal:abc", "AZ3:Nigar:120", "AZ1:Leyla:100",

    "AZ4:Ali:-5", "AZ3:Rauf:50", "AZ5:Aysel:0", "AZ6:Orxan:30"

];

const batches = [

    "301|AZ1:-200,AZ3:+80", "302|AZ5:-10", "303|AZ1:+50,AZ9:+5", "304|AZ3:x",

    "305|AZ1:-300,AZ3:+300,AZ1:-200", "306|AZ5:+40,AZ1:-100", "307|AZ3:0", "308|AZ3:-200,AZ5:+200"

];

let obj = {};
for (let a of accountLines) {
    let i = a.split(":");
    if (Number(i[2]) >= 0) {
        if (i[0] in obj) {
            if (obj[i[0]].owner == i[1]) {
                obj[i[0]].balance = Number(i[2]);
            } else {
                console.log(`Conflict for id: ${i[0]}`);
            }
        } else {
            obj[i[0]] = {
                owner: i[1],
                balance: Number(i[2])
            }
        }
    } else {
        console.log(`Rejected line: ${i}`);
    }
}
console.log(obj);
for (let i in obj) {
    console.log(`${i}|${obj[i].owner}|${obj[i].balance}`);
}


let map1 = new Map();
for (let a of batches) {
    let str = a.split("|");
    let id = str[0];
    let batches1 = str[1].split(",");
    for (let i = 0; i < batches1.length; i++) {
        let batch = batches1[i].split(":");
        if (isNaN(Number(batch[1]))) {
            console.log(`Batch ${id} rejected: bad amount`);
        } else if (!(batch[0] in obj)) {
            console.log(`Batch ${id} rejected:  unknown account ${batch[0]}`);
        } else if (batch[1][0] == '-' && obj[batch[0]].balance + Number(batch[1])<0) {
            console.log(`Batch ${id} rejected:  overdraft for ${batch[0]}`);
        } else {
            obj[batch[0]].balance += Number(batch[1]);
            map1.set(id,batch[0]+"|"+obj[batch[0]].balance);
            console.log(`Batch ${id} accepted:  balance for ${batch[0]}`);
        }
    }
}

console.log(map1);
for (let i in obj) {
    console.log(`${i}|${obj[i].owner}|${obj[i].balance}`);
}
















