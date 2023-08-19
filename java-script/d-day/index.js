const clockTitle = document.querySelector(".js-clock");

function clock(){
  const dday = new Date("Dec 25, 2022, 00:00:00").getTime();
  let today = new Date();
  let dClock = dday - today;
  let chrD = Math.floor(dClock / (1000*60*60*24));
  let chrH = Math.floor(dClock / (1000*60*60)%24);
  let chrM = Math.floor(dClock / (1000*60)%60);
  let chrS = Math.floor(dClock / 1000%60);
  
  chrD = String(chrD).padStart(2, "0");
  chrH = String(chrH).padStart(2, "0");
  chrM = String(chrM).padStart(2, "0");
  chrS = String(chrS).padStart(2, "0");

  clockTitle.innerText = `${chrD}d ${chrH}h ${chrM}m ${chrS}s`;

  if(dday < today){
    return clockTitle.innerText = "Merry christmas!";
   }
}

clock();
setInterval(clock, 1000);