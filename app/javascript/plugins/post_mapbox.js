// TODO: Write your JS code in here
import mapboxgl from 'mapbox-gl';

const initPostMapbox = () => {
  const myToken = "pk.eyJ1Ijoia2VubmNob25nIiwiYSI6ImNrN3ljczdyczA1YW0zbHJ0NGt4NHgyczkifQ.1NZnPvnWPumtduEfgzPkjg";
  // This is my token for MapBox
  // 1. Get the field value entered by the user in the input-text field. querySelector the form
  const form = document.querySelector('#wiki-button');
  // method to send data to MapBox
  // 2. have an addEventListener to the submit button within the form.
  // Listen the form and dont forget to preventDefault
  if(form) {
    form.addEventListener(('click'), (event) => {
      event.preventDefault();
      const input = document.querySelector('#search');
      fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${input.value}.json?access_token=${myToken}`)
        .then(response => response.json())
        .then((data) => {
          mapboxgl.accessToken = `${myToken}`;
          const map = new mapboxgl.Map({
            container: 'map-post',
            style: 'mapbox://styles/mapbox/streets-v9',
            center: [data.features[0].center[0], data.features[0].center[1]],
            zoom: 12
          });
          new mapboxgl.Marker()
            .setLngLat([data.features[0].center[0], data.features[0].center[1]])
            .addTo(map);
        });
    });
  }
}

export { initPostMapbox };
