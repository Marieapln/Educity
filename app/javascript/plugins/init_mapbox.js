import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';


const buildMap = (mapElement) => {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    return new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
  };

  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cyb' // <-- use your own!
  });
  
  const addMarkersToMap = (map, markers) => {
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);
    
      // Create a HTML element for your custom marker
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';
    
      // Pass the element as an argument to the new marker
      new mapboxgl.Marker(element)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(map);
    });
  };
  
  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  };
  
  const initMapbox = () => {
    const mapElement = document.getElementById('map');
    if (mapElement) {
      const map = buildMap(mapElement);
      const markers = JSON.parse(mapElement.dataset.markers);
      map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,mapboxgl: mapboxgl }));
      addMarkersToMap(map, markers);
      fitMapToMarkers(map, markers);
      
    }
  };


    
  
export { initMapbox };

