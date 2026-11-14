
function calculateAverage(a, b, c){
    return (a+b+c)/3
}
const average = (a, b, c) => {
    const total = a + b + c;
    return total / 3;
};
function introduce(name, city = "Baku"){
    console.log(`${name}: This is ${city}`);
}
introduce("ilqar");
introduce("rasim","Sumqayit");

function sumAll(...nums){
    let sum=0;
    for(const num of nums){
        sum+=num;
    }
    return sum;
}
console.log(sumAll(1,2,3,4,5));

function multiplier(nums,multply){
    for(let i = 0; i<nums.length; i++){
        nums[i]*=multply;
    }
    return nums;
}
function applyToAll(nums,callback){
    let result = callback(nums,2)
    return result;
}
console.log(applyToAll([1,2,3,4,5],multiplier));

function createCounter() {
    let count = 0;
    return function () {
        count++;
        return count;
    };
}
const counterA = createCounter();
console.log(counterA()); // 1
console.log(counterA()); // 2
const counterB = createCounter();
console.log(counterB()); // 1
console.log(counterB());// 2
console.log(counterB());// 3

//var and let's difference is var is like global and let is like local, for example inside of blocks if we create 
//variable with let we cannot access outside of those blocks like for, if and others