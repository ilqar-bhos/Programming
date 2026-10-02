var price;
var qty;
var category;
var total_value;
for (let i = 1; i < 21; i++) {
    qty=(i*7)%12 -2;
    if(i%5==0){
        price=null;
    }else{
        price=i*15;
    }
    if (i%3==0) category="tech"; 
    else if (i%3==1) category="furniture";
    else category="other";
    if(qty<0||price==null){
        console.log(`${i}. Quantity less than 0 or price is null(skipped)\n`);
    }else if(qty==0){
        console.log(`${i}. Out of stock!\n`);
    }else{
        total_value=price*qty;
        console.log(`${i}. ${qty} ${category} with price each: ${price} and total value: ${total_value}`);
        if (total_value>=3000) {
            console.log(`You got 15% discount: ${total_value*0.85}\n`);
        }else if(total_value>=1500){
            console.log(`You got 10% discount: ${total_value*0.90}\n`);
        }else if(total_value>=500){
            console.log(`You got 5% discount: ${total_value*0.95}\n`);
        }else{
            console.log(`Unfortunately, no discounts today\n`);
        }
    }
}