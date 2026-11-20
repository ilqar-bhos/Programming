export function onlyLetters(value){
    return 
}
export class ValidationError extends Error { 
constructor(field, message) {
super(message); 
this.name = "ValidationError";
this.field = field;
}
}
function register(user) {
if (!user.name) throw new ValidationError("name", "Required");
if (!(/^[a-zA-Z]+$/.test(user.name))) throw new ValidationError("name", "Should contain only letters!");
if (!(/^[a-zA-Z]+$/.test(user.surname))) throw new ValidationError("surname", "Should contain only letters!");
if (!(/\S+@\S+\.\S+/.test(user.email))) throw new ValidationError("email", "Email is not valid");
if (!(/[A-Z]+$/.test(user.password))) throw new ValidationError("password", "Password should contain at least one capital letter");
if (user.password.length<8) throw new ValidationError("password", "Password length should be more than or equal to 8");
return true; 
}
export function tryRegister(user) {
try {
 return register(user);
} catch (err) {
if (err instanceof ValidationError) { 
console.log(`${err.name} [${err.field}]: ${err.message}`);
return false;
} else {
throw err; 
}
}
}