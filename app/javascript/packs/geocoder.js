mapboxgl.accessToken = 'pk.eyJ1IjoibHlrbiIsImEiOiJja3czeXZrZGQxdHE0Mm5udGVwZHBtNnZnIn0.6aMXlX3GFFptQdhDXQwvhg';
const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v11',
  center: [-79.4512, 43.6568],
  zoom: 13
});

// Add the control to the map.
const geocoder = new MapboxGeocoder({
  accessToken: mapboxgl.accessToken,
  mapboxgl: mapboxgl
});

document.getElementById('geocoder').appendChild(geocoder.onAdd(map));
