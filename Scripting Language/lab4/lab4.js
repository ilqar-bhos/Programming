let store = [];
store.push(Array.of('Laptop', 'electronics', 3, 1200));
store.push(Array.of('Pen', 'stationery', 50, 1.5));
store.push(Array.of('Phone', 'electronics', 10, 800));
store.push(Array.of('Notebook', 'stationery', 4, 3));
store.push(Array.of('Mouse', 'electronics', 0, 25));
for (let i = 0; i < store.length; i++) {
    console.log(store[i]);
}
console.log('\n');
for (let i = 0; i < store.length; i++) {
    if (store[i][2]==0) {
        console.log(`${store[i]}  Stock status of product: OUT`); 
    }else if (store[i][2]<5) {
        console.log(`${store[i]}  Stock status of product: LOW`); 
    }else{
        console.log(`${store[i]}  Stock status of product: OK`); 
    }
}
console.log('\n');
for (let i = 0; i < store.length; i++) {
    if (store[i][1]=='electronics') {
        store[i][3]=store[i][3]-store[i][3]*0.1
        console.log(`${store[i]}  You got 10% discount!`); 
    }else if (store[i][1]=='stationery') {
        store[i][3]=store[i][3]-store[i][3]*0.05
        console.log(`${store[i]}  You got 5% discount!`); 
    }else{
        console.log(`${store[i]}  No discount!`); 
    }
}
console.log('\n');
for (let i = 0; i < store.length; i++) {
    if (store[i][2]!=0) {
        console.log(`${store[i]}  Total price for this product is: ${store[i][2]*store[i][3]}`); 
    }else{ 
        console.log(`${store[i]}  Out of stock!`); 
    }
}

let prompt = require("prompt-sync")({sigint:true});
a = prompt("Search for product: ");
let check=0;
for (let i = 0; i < store.length; i++) {
    if (store[i].indexOf(a)<0) {
         check++;
    }else{ 
        console.log(`Found: ${store[i]}`); 
    }
}
if(check==store.length){
    console.log(`Not found`);
}

store.push(Array.of('PCB', 'electronics', 5, 125));
let newArray=[];
for (let i = 0; i < store.length; i++) {
    //wrote here because we delete all OUT from array but bonus asked after deletion
    if (store[i][2]<5) {
        newArray.push(store[i][0]);
    }
    if (store[i][2]==0) {
         store.splice(i,1);
    }
}
for (let i = 0; i < store.length; i++) {
    console.log(store[i]);
}
console.log('\n List containing only the names of products whose status is “LOW” or “OUT”')
console.log(newArray);
