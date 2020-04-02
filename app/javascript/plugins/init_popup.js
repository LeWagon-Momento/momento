import Swal from 'sweetalert2'

const initPopUpBox = () => {
  const homeHeading = document.querySelector('.home-heading')
  if(homeHeading) {
      console.log("kenn")
    if((currentCity != userCity) && noTrips === 'true') {
      Swal.fire({
      customClass: {
          confirmButton: 'button-large mr-2 px-5',
          cancelButton: 'button-large'
        },
      buttonsStyling: false,
      title: '<div class="poptitle">We noticed that you are overseas! Do you want to start a new trip?</div>',
      showClass: {
        popup: 'animated fadeInDown slow'
      },
      hideClass: {
        popup: 'animated fadeOutUp slow'
      },
      icon: 'info',
      showCancelButton: true,
      // confirmButtonColor: 'button-small',
      // reverseButtons: true,
      // cancelButtonColor: '#d33',
      confirmButtonText: 'Start!'
      }).then((result) => {
        if (result.value) {
          window.location = '/trips/new'
        }
      })
    }
  }
};

export { initPopUpBox };

  // Swal.mixin({
  //   input: 'text',
  //   confirmButtonText: 'Next &rarr;',
  //   showCancelButton: true,
  //   reverseButtons: true,
  //   progressSteps: ['1', '2']
  // }).queue([
  //   {
  //     title: 'Trip Name',
  //     text: 'Please enter your trip name'
  //   },
  //   'Trip description'
  // ]).then((result) => {
  //   if (result.value) {
  //     const trip_details = JSON.stringify(result.value)
  //     Swal.fire({
  //       title: 'All done!',
  //       html: `
  //         Your answers:
  //         <pre><code>${trip_details}</code></pre>
  //       `,
  //       confirmButtonText: 'Start your trip!'
  //     })
  //   }
  // })
