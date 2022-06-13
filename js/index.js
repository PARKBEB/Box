const savedName = document.querySelector(".savedName");
const inputImg = document.querySelector("#inputImage");
const uploadImg = document.querySelector("#uploadImage");
const toDay = document.querySelector(".toDay");
const savedGoal = document.querySelector(".goal");

const USERNAME_KEY = "username";
const username = localStorage.getItem(USERNAME_KEY);
const GOAL_KEY = "goal";
const goal = localStorage.getItem(GOAL_KEY);

const HIDDEN_CLASSNAME = "hidden";

savedName.innerText = "Hellow!"+" "+username;
savedGoal.innerText = goal;

/* toDay */
let now = new Date();
const week = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
let day = week[now.getDay()];

toDay.innerText = "Today is"+" "+ day;
/* profile */ 
$(document).ready(function(){
    $('#inputImage').change(function(){
        let selectFile = document.querySelector("#inputImage").files[0];
        const file = URL.createObjectURL(selectFile);
        document.querySelector("#uploadImage").src = file;
        inputImg.classList.add(HIDDEN_CLASSNAME);
        uploadImg.classList.remove(HIDDEN_CLASSNAME);
    });
  });
