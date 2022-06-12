const savedName = document.querySelector(".savedName");
const USERNAME_KEY = "username";
const username = localStorage.getItem(USERNAME_KEY);

console.log(username);
savedName.innerText = "Hellow!"+" "+username;

$(document).ready(function(){
    $('#inputImage').change(function(){
        let selectFile = document.querySelector("#inputImage").files[0];
        const file = URL.createObjectURL(selectFile);
        document.querySelector("#uploadImg").src = file;
        
    });
  });
