function createCounter(){
    let count = 0;
    return function sd(){
         count++;
         return count;
    },function sda(){
         count++;
         return count;
    };
}

const counterA = createCounter();
console.log(counterA());
console.log(counterA());