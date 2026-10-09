// let array=['Rasim','Tofiq','Novruz','Anar','Rza'] 
// if (Array.isArray(array)){
//     console.log('it is array');
// }
// console.log(typeof(array));


// let a = new Array(3);
// console.log(a);
// console.log(new Array(3, 4)); // [3, 4]
// console.log(new Array("x", "y"));

// // 5. fill()
// console.log(new Array(3).fill(0)); // [0, 0, 0]
// console.log(new Array(3).fill(undefined)); // [0, 0, 0]
// console.log([1, 2, 3, 4].fill(9, 1, 3)); // [1, 9, 9, 4]
// console.log([1, 2, 3, 4].fill('/', 1, 10)); // [ 1, '/', '/', '/' ]

// arr=Array.from(3);
// arr1=Array.from('abc');// ["a", "b", "c"]
// arr2=Array.from([1,2,3,4,5]) //[ 1, 2, 3, 4, 5 ]
// console.log(Array.from({ length: 3 }, (x, i) => i)); // [0, 1, 2]
// console.log(Array.from([1, 2, 3], x => x * 2)); // [2, 4, 6]
// console.log(Array.of(3,4,5,6,7));      //creates arry of given data
// console.log(Array.of([3,4,5],[6,7]));
// console.log(Array.of('sdsadsd')); //[ 'sdsadsd' ]
// arr3=[1,2,3,4,5,6];
// arr3.push(67);
// console.log(arr3);
// arr3.unshift(67);
// console.log(arr3);
// arr3.pop();
// arr3.pop();
// console.log(arr3);
// let a1 = arr3.length;
// for (let i = 0; i < a1; i++) {
//     console.log(arr3.pop());
// }

let cities = ["Baku", "Ganja", "Sumqayit", "Ganja"];
console.log(cities.indexOf("Ganja")); 
console.log(cities.indexOf("Ganja", 2)); 
console.log(cities.indexOf("Shaki"));
// lastIndexOf     tapmasa -1 verir
console.log(cities.lastIndexOf("Ganja")); 
console.log(cities.lastIndexOf("Ganja", 2));
// includes
console.log(cities.includes ("Baku")); 
console.log(cities.includes ("Baku", 1)); 
console.log(cities.includes ("Lankaran")); // includes on numeric values let nums = [5, 10, 15];
