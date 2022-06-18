const toDoForm = document.getElementById("todo-form");
const toDoInput = toDoForm.querySelector("input");
const toDoList = document.getElementById("todo-list");

const TODOS_KEY = "todos";

const toDos = [];

function saveToDos(){
    localStorage.setItem("saveToDos", JSON.stringfy(toDos));
}

function deletToDo(event){
    const li = event.target.parentElement;
    li.remove();
}

function paintToDo(newTodo){
    const li = document.createElement("li");
    const span = document.createElement("span");
    const button = document.createElement("button");
    span.innerText = newTodo;
    button.innerText = "X";
    button.addEventListener("click",deletToDo);
    li.appendChild(span);
    li.appendChild(button);
    toDoList.appendChild(li);

}

function handleToDoSubmit(event){
    event.preventDefault();
    const newTodo = toDoInput.value;
    toDoInput.value = "";
    toDos.push(newTodo);
    paintToDo(newTodo);
    saveToDos();

}

toDoForm.addEventListener("submit", handleToDoSubmit);

function sayHeLLO(item){
    console.log("this is the turn of", item);
}

const savedToDos = localStrage.getItem(TODOS_KEY);

if(savedToDos !== null){
    const parsedToDos = JSON.parse(savedToDos);
    parseToDos.forEach(item) => console.log(""this is the turn of", item");
}

