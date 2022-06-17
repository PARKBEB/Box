const savedName = document.querySelector(".savedName");
const inputImg = document.querySelector("#inputImage");
let uploadImg = document.querySelector("#uploadImage");
const uploadsrc = document.querySelector("#uploadImage").src;
const toDay = document.querySelector(".toDay");
const savedGoal = document.querySelector(".goal");
const saveddDay = document.querySelector(".D-DAY");
const bigdDay = document.querySelector(".big_Dday");
const weatherContainer = document.querySelector(".weather");
const mainD = document.querySelector("#dDay");

const USERNAME_KEY = "username";
const username = localStorage.getItem(USERNAME_KEY);
const GOAL_KEY = "goal";
const goal = localStorage.getItem(GOAL_KEY);
const DDAY_KEY = "dDay";
const dDay = localStorage.getItem(DDAY_KEY);
const PROIMG_KEY = "profileImg";

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
    const store = localStorage.getItem(PROIMG_KEY);
    if(store != null) loadImage(store);

    $('#inputImage').change(function(){
        let selectFile = document.querySelector("#inputImage").files[0];
        const file = URL.createObjectURL(selectFile);
        document.querySelector("#uploadImage").src = file;
        localStorage.setItem(PROIMG_KEY, file);
        inputImg.classList.add(HIDDEN_CLASSNAME);
        uploadImg.classList.remove(HIDDEN_CLASSNAME);
    });
  });

  function loadImage(store){
    uploadImg.setAttribute("src",store);
    inputImg.classList.add(HIDDEN_CLASSNAME);
    uploadImg.classList.remove(HIDDEN_CLASSNAME);
  }

  /* goal */
  function goalPage(){
    location.href="goal.html";
  }



  function dDayPage(){
    if(dDay === null){
      location.href="goal.html";
    }else{
      location.href="dDay.html";
    }
  }

  if(dDay === null){
    saveddDay.innerText = "D-DAY";
    bigdDay.innerText = "D-DAY";
  }else{
    saveddDay.innerText = "D-"+dDay;
    bigdDay.innerText = "D-"+dDay;
  }

  /* weather */
  const API_KEY = "32a8b4a317ec9abc25b94cf9189e3567";
function onGeoOk(position){
  const lat = position.coords.latitude;
  const log = position.coords.longitude;
  console.log("You live it", lat, log);
  const url = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${log}&appid=${API_KEY}&units=metric`;
  fetch(url).then(response => response.json()).then(data => { 
    weatherContainer.innerText = `${data.weather[0].main} / ${data.main.temp}`;
  })
}
function onGeoOkError(){
  alert("Can't find you. No weather for you.");
}
  navigator.geolocation.getCurrentPosition(onGeoOk, onGeoOkError);
  