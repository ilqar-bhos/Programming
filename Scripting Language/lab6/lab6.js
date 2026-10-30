const books = [
  { title: "Dede Qorqud", pages: 220, year: 1300, available: true },
  { title: "Ali and Nino", pages: 310, year: 1937, available: false },
  { title: "Sahib-i Zaman", pages: 180, year: 1912, available: true },
  { title: "Stone Dreams", pages: 450, year: 1967, available: true }
];

function getTotalPages(books) {
    let sum=0;
    for(let i of books){
        sum+=i.pages;
    }
    return sum;
}

console.log(getTotalPages(books));


getLabel = (book, maxPages = 300) =>  (book.pages <= maxPages) ?  "Short" : "Long";
for(let i of books){
    console.log(getLabel(i));
}
function describeBook(book){
    let title = book.title;
    let label = getLabel(book);
    let status = book.available ? "In" : "Out";
    return { title, label, status }
} 
for(let i of books){
    console.log(describeBook(i));
}
console.log("_______________________");
function findBooks(books, callback) {
    const results = [];
    for(let book of books){
        if(callback(book)){
            results.push(book);
        }
    }
    return results;
}
console.log(findBooks(books, b => b.available && b.year > 1900));

function createLibrary(){
   let private_books = [];
   return {
        addBook(book) {
            private_books.push(book);
        },
        borrowBook(title) {
            for(let book of private_books){
                if(book.title==title){
                    book.available = false;
                }
            }
        },
        getAvailable() {
            let books_available=[];
            for(let book of private_books){
                if(book.available){
                    books_available.push(book);
                }
            }
            return books_available;
        }
   }
}
let myLib = createLibrary();
myLib.addBook({ title: "Dede Qorqud", pages: 220, year: 1300, available: true });
myLib.addBook({ title: "Sahib-i Zaman", pages: 180, year: 1912, available: true });
myLib.addBook({ title: "Sahib-i Zaman 2", pages: 180, year: 1912, available: true });
console.log("Available books for new myLib:")
console.log(myLib.getAvailable());
console.log("Borrowing book Sahib-i Zaman 2")
myLib.borrowBook("Sahib-i Zaman 2");
console.log("Available books for new myLib:")
console.log(myLib.getAvailable());