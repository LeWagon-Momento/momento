
/* Set the width of the sidebar to 250px and the left margin of the page content to 250px */
const openNav = () => {
  const sideBarButton = document.querySelector('.openbtn');
  if (sideBarButton) {
    sideBarButton.addEventListener('click', (event) => {
      document.getElementById("mySidebar").style.width = "250px";
      document.getElementById("main-body").style.marginLeft = "250px";

      const sideBar = document.getElementById('mySidebar');
      sideBar.insertAdjacentHTML('afterbegin', '<a id="closebtn">&times;</a>')
    })
  }
}

/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
const closeNav = () => {
  const mainBody = document.querySelector('#main-body');
  if (mainBody) {
    mainBody.addEventListener('click', (event) => {
      document.getElementById("mySidebar").style.width = "0";
      document.getElementById("main-body").style.marginLeft = "0";
    })
  }

  const sideBar = document.getElementById('mySidebar');

  if (sideBar) {
    sideBar.addEventListener('click', (event) => {
      document.getElementById("mySidebar").style.width = "0";
      document.getElementById("main-body").style.marginLeft = "0";
    })
  }
}

export { openNav, closeNav };
