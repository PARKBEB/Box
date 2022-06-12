const savedName = document.querySelector(".savedName");
const USERNAME_KEY = "username";
const username = localStorage.getItem(USERNAME_KEY);

console.log(username);
savedName.innerText = "Hellow!"+" "+username;

