const savedName = document.querySelector(".savedName");
const inputImg = document.querySelector("#inputImage");
const uploadImg = document.querySelector("#uploadImage");
const USERNAME_KEY = "username";
const username = localStorage.getItem(USERNAME_KEY);

const HIDDEN_CLASSNAME = "hidden";

console.log(username);
savedName.innerText = "Hellow!"+" "+username;

$(document).ready(function(){
    $('#inputImage').change(function(){
        let selectFile = document.querySelector("#inputImage").files[0];
        const file = URL.createObjectURL(selectFile);
        document.querySelector("#uploadImg").src = file;
        inputImg.classList.add(HIDDEN_CLASSNAME);
        uploadImg.classList.remove(HIDDEN_CLASSNAME);
    });
  });
