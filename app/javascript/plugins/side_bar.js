
const navLogo = document.querySelector('.open-side-bar');
const sideBar = document.querySelector('.sidenav');
const closeB = document.querySelector('.closebtn');


const toggleOn = () => {
  sideBar.style.width = "150px" ;
  document.querySelector(".navbar-push").style.marginLeft = "150px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
};

const toggleOff = () => {
  sideBar.style.width = "0px";
  document.querySelector(".navbar-push").style.marginLeft = "0";
  document.body.style.backgroundColor = "white";
};

const navBarHere = document.querySelector('.navbar');


const toggleNav = () => {
if (navBarHere) {
navLogo.addEventListener('click', toggleOn);}}
const closeNav = () => {
if (navBarHere) {
closeB.addEventListener('click', toggleOff);}}



export { toggleNav, closeNav };


