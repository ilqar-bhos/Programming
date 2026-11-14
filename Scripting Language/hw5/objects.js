let salary='Salary'
let student = {
name: "Aysel",
age: 20,
major: "CE",
};

console.log(student.name);
console.log(student["age"]);
console.log(student["major"]);

student.name = "Ilqar";
console.log(student);
student.gpa = 100;
console.log(student);
delete student.age;
console.log(student);

console.log("gpa" in student);
console.log(student.hasOwnProperty("name"));
console.log(student.hasOwnProperty("names"));

console.log(Object.keys(student));
console.log(Object.values(student));
console.log(Object.entries(student));

student.nestedArray = {a:1,b:2,c:3};
student2 = { ...student };
student3 = structuredClone(student);


student.nestedArray.a = 3;
console.log(student);
console.log(student2);//changed also
console.log(student3);

const ages = new Map();
ages.set("Aysel", 20).set("Elvin", 22).set("Rasim", 21);

console.log(ages.get("Rasim")); 
console.log(ages.has("Elvin")); 
ages.delete("Elvin");
console.log(ages.size);

for (const element of ages) {
    console.log(element);
}


let s = new Set([1, 2, 2, 3, 3, 3]);
console.log(s);
s.add(4).add(4).add(5);
console.log(s.has(2));
console.log(s.delete(1));
console.log(s);

const numbers_array = [1, 2, 2, 3, 3, 3, 4, 5, 5];

const unique = [...new Set(numbers_array)];

console.log(unique);