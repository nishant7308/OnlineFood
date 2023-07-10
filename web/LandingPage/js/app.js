//Changing the Header Topics
let topic_arr=new Array('Movie Nights ?','Late night at office ?','Movie Marathon ?','Game Night ?','Hungry ?','Unexpected guests ?','Cooking gone Wrong ?');    
let topic_name=document.getElementById('topic');
let counter=0;
setInterval(changeTopic,3000);
function changeTopic() {
  topic_name.textContent =topic_arr[counter];
  counter++;
  if (counter >= topic_arr.length) {
    counter = 0;
  }
}
//Sidebar Event
let btn=document.getElementById('login');
btn.addEventListener('click',toggleSidebar);
function toggleSidebar(e)
{
  e.preventDefault();
  document.getElementById('overlay').style.display="block";
  document.getElementById('sidebar').classList.toggle('active');
}
//closing the Sidebar
let btn_close=document.getElementById('close-sidebar');
btn_close.addEventListener('click',closeSidebar);
function closeSidebar(e)
{
  e.preventDefault();
  document.getElementById('overlay').style.display="none";
  document.getElementById('sidebar').classList.toggle('active');
}
//Changing the Background Image
function changeImage()
{
  let bg=document.getElementById('header-content-2');
  let val=Math.floor((Math.random()*3)+1);
  console.log(val);
  switch(val)
  {
    
    case 1: bg.style.background="url('../img/bg-1.webp') no-repeat center center/cover";
    break;
    case 2: bg.style.background="url('../img/bg-2.webp') no-repeat center center/cover";
    break;
    case 3: bg.style.background="url('../img/bg-3.jpg') no-repeat center center/cover";
    break;

  }
}
changeImage();