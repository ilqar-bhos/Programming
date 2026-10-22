const lotLines = ["L1|North|2", "L2|South|1", "L3|East|x", "L1|North|1", "L2|West|3"];

const events = [
"1 ARRIVE AA1 L1", "2 ARRIVE BB2 L1", "2 ARRIVE CC3 L2", "3 ARRIVE DD4 L2",

"3 ARRIVE EE5 L1", "4 ARRIVE FF6 L1", "5 ARRIVE AA1 L2", "6 STATUS BB2 L1",

"7 LEAVE CC3 L1", "8 LEAVE CC3 L2", "9 ARRIVE GG7 L9", "10 FLY AA1 L1",

"11 LEAVE AA1 L1", "12 LEAVE BB2", "13 LEAVE BB2 L1", "14 ARRIVE HH8 L1"

];

const closing = 20;

let map = new Map();

for(let lots of lotLines){
    let lot = lots.split("|");
    if(isNaN(Number(lot[2]))||Number(lot[2])<=0){
        console.log(`Skipped lot line: ${lot}`);
    }else{
        if (map.has(lot[0])) {
            let check = map.get(lot[0]);
            if (lot[1] == check.name) {
                check.free += Number(lot[2]);
                check.total += Number(lot[2]);
            }else{
                console.log(`Skipped lot line: ${lot}`);
            }
        }else{
            map.set(lot[0], {
                name:lot[1],
                free: Number(lot[2]),
                total: Number(lot[2]),
                waiting: []
            })
        }
    }
}
console.log(map);