class Student{
    name='as';
    age=12;
    describe(){
        return `${this.name} , ${this.age}`
    }
}
let s1 = new Student();
s1.name="Rasim";
console.log(s1.describe());

class Student1{
    constructor (name,age){
        this.name=name;
        this.age=age;
    }
    describe(){
        return `${this.name} , ${this.age}`
    }
}
let s2 = new Student1('sd',23,2,2,2,2);
console.log(s2.describe());

class Student2{
    #course = 'private variable'
    constructor (name,age){
        this.name=name;
        this.age=age;
    }
    describe(){
        return `${this.name} , ${this.age}`
    }
    getGourse(){
        return this.#course;
    }
    setCourse(s){
        this.#course = s;
    }
}
let s3 = new Student2('sd',23,2,2,2,2);
//s3.course //undefined
console.log(s3.getGourse());
s3.setCourse('d');
console.log(s3.getGourse());

class Student4{
    static course='DBA';
    constructor (name,age){
        this.name=name;
        this.age=age;
    }
    static describe(){
        return `${this.name} , ${this.age}`
    }
}
let s4 = new Student4('sd',23,2,2,2,2);
// console.log(s4.course)//error
console.log(Student4.course)
// console.log(s4.describe())//error
console.log(Student4.describe())
Student4.course = 'salam';
console.log(Student4.course)

//s3.course //undefined


