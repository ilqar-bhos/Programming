export var name='sdf'
export function getName(){
    return name
}

export default class User {
    constructor(name,surname){
        this.name=name
        this.surname=surname
    }
    default(){
        console.log(`${this.name} ${this.surname}`)
    }
}