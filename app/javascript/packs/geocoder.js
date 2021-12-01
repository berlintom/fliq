mapboxgl.accessToken = 'pk.eyJ1IjoibHlrbiIsImEiOiJja3czeXZrZGQxdHE0Mm5udGVwZHBtNnZnIn0.6aMXlX3GFFptQdhDXQwvhg';
const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/lykn/ckwdpywox3jlr15lccf03z7ra',
  center: [52.5063892, 13.3899083],
  zoom: 13
});

// Add the control to the map.
const geocoder = new MapboxGeocoder({
  accessToken: mapboxgl.accessToken,
  mapboxgl: mapboxgl
});

document.getElementById('geocoder').appendChild(geocoder.onAdd(map));
