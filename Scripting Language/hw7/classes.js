class Book {
    static count = 0;
    constructor(title, author, pages) {
        this.title = title;
        this.author = author;
        this.pages = pages;
        Book.count++;
    }
    describe() {
        return `${this.title} (${this.author}) total ${this.pages}`;
    }
    get readingTime() {
        return Math.ceil(this._pages / 30);
    }
    get pages() {
        return this._pages;
    }
    set pages(value) {
        if (value < 0) {
            console.log("Invalid page");
            return;
        }
        this._pages = value;
    }
}

class Wallet {
    #money = 0;
    constructor(owner) {
        this.owner = owner;
    }
    #log(text) { 
        console.log(`[${this.owner}] ${text}`);
    }
    add(amount) {
        if (amount <= 0) {
            this.#log("Invalid amount");
            return;
        }
        this.#money += amount;
        this.#log(`+${amount}`);
    }
    get money() { 
        return this.#money;
    }
}

const book1 = new Book("JS", "novruz", 123);
const book2 = new Book("JS", "novruz", -123);
console.log(book1.describe());
const wallet1 = new Wallet("m10");
wallet1.add(50);
wallet1.add(-150);
console.log(wallet1.money);

