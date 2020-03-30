const loginModal = () => {
  const modalButton = document.getElementById('modal-button');
  if (modalButton) {
    modalButton.addEventListener('click', (event) => {
      const modal = document.getElementById('modal-test');
      modal.style.display = "block"
      window.onclick = function(event) {
        if (event.target == modal) {
          modal.style.display = "none";
        }
      }
    })
  }
}


export { loginModal };
