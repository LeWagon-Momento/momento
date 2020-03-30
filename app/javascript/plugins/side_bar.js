
const navLogo = document.querySelector('.open-side-bar');
const sideBar = document.querySelector('.sidenav');
const closeB = document.querySelector('.closebtn');

const toggleNav = () => {
  navLogo.addEventListener('click', toggleOn);
}

const closeNav = () => {
  closeB.addEventListener('click', toggleOff);
}

const toggleOn = () => {
  sideBar.style.width = "150px" ;
  document.querySelector(".navbar-push").style.marginLeft = "150px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

const toggleOff = () => {
  sideBar.style.width = "0px";
  document.querySelector(".navbar-push").style.marginLeft = "0";
  document.body.style.backgroundColor = "white";

}

export { toggleNav, closeNav};


