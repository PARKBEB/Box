const goalForm = document.getElementById("goal-form");
const goalInput = document.querySelector("#goal-form Input");
const greeting = document.querySelector("#greeting");

const HIDDEN_CLASSNAME = "hidden";
const GOAL_KEY = "goal";

function goalSubmit(even){
    even.preventDefault();
    goalForm.classList.add(HIDDEN_CLASSNAME);
    const goal = goalInput.value;
    localStorage.setItem(GOAL_KEY, goal);
    paintGreetings(goal);
    send();
}

function paintGreetings(goal){
    greeting.innerText = goal;
    greeting.classList.remove(HIDDEN_CLASSNAME);
}

const savedGoal = localStorage.getItem(GOAL_KEY);

if(savedGoal === null){
    goalForm.classList.remove(HIDDEN_CLASSNAME); 
    goalForm.addEventListener("submit", goalSubmit);
} else {
    paintGreetings(savedGoal);
}

function send(){
    location.href="index.html";
}
