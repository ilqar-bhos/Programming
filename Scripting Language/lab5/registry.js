let obj = {
    title: "Scripting Language", 
    code: "javascript", 
    instructor: {
        name: "Elchin",
        office: "IT"
    } 
}
console.log(obj);
obj["credits"] = 60;
console.log(obj);
obj["title"] = "Database Administration";
console.log(obj);
delete obj.code;
console.log(obj);
console.log(Object.hasOwn(obj,"credits"));
console.log(Object.hasOwn(obj,"room"));
if (!Object.hasOwn(obj,"room")) {
    console.log("TBA");
}else{
    console.log(obj.room ?? 1)
}

for (let [key, value] of Object.entries(obj)) {
    console.log(`${key} : ${value}`);
}
console.log(`Total number of properties is ${Object.keys(obj).length}`)



obj2 = obj
obj3 = {...obj}
obj2["title"]="Scripting";
console.log(obj2,obj3,obj);

let students =new Map([["Aysel", 99], ["Elvin2", 98], ["Aysel1", 97], ["Nigar", 96], ["Elvin1", 100]]);
students.set("Ilqar",100);
console.log(students);
students.delete("Ilqar");   
console.log(students);
console.log(students.size);
let new_obj_from_map = Object.fromEntries(students);
console.log(new_obj_from_map);

let new_set = new Set(["Aysel", "Elvin", "Aysel", "Nigar", "Elvin"]);
let new_set2 = [...new Set(new_set)];
console.log(new_set);
console.log(new_set2);

let new_set_a = new Set(["Aysel", "Elvin", "Aysel1", "Nigar", "Elvin2"]);
let new_set_b = new Set(["Aysel", "Elvin", "Ilqar", "Rasim", "Novrus"]);
let inter = new Set([...new_set_a].filter(x=>new_set_b.has(x))); console.log(inter);
let union = new Set([...new_set_a,...new_set_b]); console.log(union);
let diff_a = new Set([...new_set_a].filter(x=>!new_set_b.has(x))); console.log(diff_a);