import * as check from './external.js'
import promptSync from 'prompt-sync'

const prompt = promptSync({sigint: true});
let name,surname,email,password;

class User {
    constructor(name, surname, email, password) {
        this.name=name;
        this.surname=surname;
        this.email=email;
        this.password=password;   
    }
}
while (1) {
    
    name = prompt("Enter name: ");
    surname = prompt("Enter surname: ");
    email = prompt("Enter email: ");
    password = prompt("Enter password: ");
    let user = new User(name,surname,email,password);
    if(check.tryRegister(user)){
        console.log("Successfully registered!")
        console.log(`Welcome: ${name} ${surname}`)
        break;
    }
}
