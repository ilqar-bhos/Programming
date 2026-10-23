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

function findBooks(books, callback) {
    const check = callback(books);
    console.log(check);
}
findBooks(books, b => b.available && b.year > 1900);
