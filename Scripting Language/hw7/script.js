const list = document.getElementById("books");
const li1 = document.createElement("li");
li1.textContent = "Events1";
list.append(li1);
const li2 = document.createElement("li");
li2.textContent = "Events2";
list.append(li2);
const li3 = document.createElement("li");
li3.textContent = "Events3";
li3.classList.add("topic");
li3.style = "color:red;";
list.append(li3);


// textContent just changes text of an element. innerHTML can add new elements like p, input to the element