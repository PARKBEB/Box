const dDayForm = document.getElementById("dDay-form");
const dDayInput = document.querySelector("#dDay-form Input");
const greeting = document.querySelector("#greeting");

const HIDDEN_CLASSNAME = "hidden";
const DDAY_KEY = "dDay";

function dDaySubmit(even){
    even.preventDefault();
    dDayForm.classList.add(HIDDEN_CLASSNAME);
    const Day = dDayInput.value;
    let goalday = new Date(Day);
    let now = new Date();
    let dDay = goalday.getTime() - now.getTime();
    let resultD = Math.floor(dDay/(1000*60*60*24));
    localStorage.setItem(DDAY_KEY, resultD);
    paintGreetings(resultD);
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
