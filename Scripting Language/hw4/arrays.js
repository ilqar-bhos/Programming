let array = new Array(1,2,3,4,5);
console.log(array[0]);
console.log(array[array.length-1]);
array[1]=7;
console.log(array);
array.push(2);
console.log(array);
array.pop();
console.log(array);
array.shift();
console.log(array);
array.unshift(12);
console.log(array);
if (array.indexOf(7)>=0) {
    console.log("It exists");
}else{
    console.log("It doesn't exist");
}
if (array.includes(33)) {
    console.log("It exists");
}else{
    console.log("It doesn't exist");
}
let new_array = array.slice(0,3);
console.log(new_array);
array.splice(2,1,8,9)
console.log(array);
let new_array2 = new_array.concat(array);
console.log(new_array2);
for (let i = 0; i < new_array2.length; i++) {
    console.log(`${new_array2[i]}`);
}
let sum=0;
for (let i of new_array2){
    sum+=i;
}
console.log(sum);