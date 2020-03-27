import mapboxgl from 'mapbox-gl';

const initPostShowMapbox = () => {
  const mapElement = document.getElementById('map1');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    console.log("kennishandsome");
    const map = new mapboxgl.Map({
      container: 'map1',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
  }
};

export { initPostShowMapbox };

