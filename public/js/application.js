// $(document).ready(function() {
//   // This is called after the document has loaded in its entirety
//   // This guarantees that any elements we bind to will exist on the page
//   // when we try to bind to them

//   // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
// });


function initialize() {
  var mapOptions = {
    zoom: 13,
    center: new google.maps.LatLng(37.775057, -122.419281),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' +
      'callback=initialize';
  document.body.appendChild(script);
}

window.onload = loadScript;


// <script type="text/javascript"
//   src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkcKf6Y6YAZ0wL9X_okmiCelX3kpxrwP0&sensor=false">
//   </script>