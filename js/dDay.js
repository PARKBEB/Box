const dDayForm = document.getElementById("dDay-form");
const dDayInput = document.querySelector("#dDay-form Input");
const greeting = document.querySelector("#greeting");

const HIDDEN_CLASSNAME = "hidden";
const DDAY_KEY = "dDay";

function dDaySubmit(even){
    even.preventDefault();
    dDayForm.classList.add(HIDDEN_CLASSNAME);
    const dDay = dDayInput.value;
    localStorage.setItem(DDAY_KEY, dDay);
    paintGreetings(dDay);
    send();
}

function paintGreetings(dDay){
    greeting.innerText = dDay;
    greeting.classList.remove(HIDDEN_CLASSNAME);
}

const saveddDay = localStorage.getItem(DDAY_KEY);

if(saveddDay === null){
    dDayForm.classList.remove(HIDDEN_CLASSNAME); 
    dDayForm.addEventListener("submit", dDaySubmit);
} else {
    paintGreetings(saveddDay);
}

function send(){
    location.href="index.html";
}
