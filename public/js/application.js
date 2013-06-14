$(document).ready(function() {

  var places = [[-25.363882, 131.044922].join(), [37.741461, -122.409038].join()];

  function() {
    var latlng = new google.maps.LatLng(45.522015, -122.683811);

    var settings = {
      zoom: 5,
      center: latlng,
      disableDefaultUI: true,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById("map_canvas"), settings);

    places.each(function(brew) {
      var pins = new google.maps.Marker({
        title: $(this).find('name').text(),
        map: map,
        clickable: true,
        position: new google.maps.LatLng(brew)
      });

      var infowindow = new google.maps.InfoWindow({
        content: $(this).find('description').text();
      });

      new google.maps.event.addListener(pins, 'click', function() {
        infowindow.open(map, pins);
      });
    });
  });
});