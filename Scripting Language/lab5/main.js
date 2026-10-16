let 
obj = {
    name:"Alice",
    age:21,
    grades: [20,30,40,50]
}
// console.log(obj);
// console.log(obj.grades[1]);
// obj.grades.splice(0);
// console.log(obj);

// for (let i of Object.values(obj)){
//     console.log(typeof i);
// }
const prompt=require("prompt-sync")({sigint: true})
// p1=prompt("Enter first property: ");
// p2=prompt("Enter second property: ");
// p3=prompt("Enter third property: ");
// fname=prompt(`Enter ${p1}: `)
// age=parseInt(prompt('Enter age: '));
// salary=Number(prompt('Enter salary: '));
// obj={
//     [p1]:fname,
//     [p2]: age,
//     [p3]: salary
// }
// console.log(obj);

obj={
    "First name":"Alice",
    "5":20,
    grades: [20,30,40,50]
}
console.log(obj["First name"]);
const av = 40;
obj={
    number: av
}
obj.number=23;
console.log(obj["number"]);


let m = new Map(
    [
        [1,'Alice'],
        [2,'Ali']
    ]
)
console.log(m.get(1));
m.delete(1);
m.set(3,'B')
console.log(m)

let a=new Set([1,2,3,4,5]);
let b=new Set([4,5,6,7,8,9]);
array_a=[...a]
let union = new Set([...a,...b]); console.log(union);
let inter = new Set([...a].filter(x=>b.has(x))); console.log(inter);
let diff_a = new Set([...a].filter(x=>!b.has(x))); console.log(diff_a);
let diff_b = new Set([...b].filter(x=>!a.has(x))); console.log(diff_b);
let symmetric_diff1 = new Set([...a].filter(x=>!b.has(x)).concat([...b].filter(x=>!a.has(x)))); console.log(symmetric_diff1);
let symmetric_diff2 = new Set([...diff_a,...diff_b]); console.log(symmetric_diff2);