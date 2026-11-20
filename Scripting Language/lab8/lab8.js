
import * as check from './external.js'
function register() {
    let name = document.getElementById("name");
    let surname = document.getElementById("surname");
    let password = document.getElementById("password");
    let email = document.getElementById("email");
    console.log(check.onlyLetters(name.value));
    console.log(`Entered: ${name.value} ${surname.value}, ${email.value}, ${password.value}`)
}