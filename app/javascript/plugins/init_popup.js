import Swal from 'sweetalert2'


const initPopUpBox = () => {
  const homeHeading = document.querySelector('#home-heading')
  if(homeHeading) {
    if((currentCity != userCity) && noTrips === 'true') {
      Swal.fire({
      title: 'Do you want to start a new trip?',
      icon: 'info',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      reverseButtons: true,
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes, Start a new trip!'
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
