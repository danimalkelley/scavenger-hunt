
// function initialize() {

//   var mapOptions = {
//     zoom: 3,
//     center: new google.maps.LatLng(0, -180),
//     mapTypeId: google.maps.MapTypeId.TERRAIN
//   };

//   var map = new google.maps.Map(document.getElementById('map-canvas'),
//       mapOptions);

//   var routeCoordinates = [
//       new google.maps.LatLng(0, 0),
//       new google.maps.LatLng(1, 0.5),
//   ];

//   var flightPath = new google.maps.Polyline({
//     path: routeCoordinates,
//     geodesic: true,
//     strokeColor: '#FF0000',
//     strokeOpacity: 1.0,
//     strokeWeight: 2
//   });

//   flightPath.setMap(map);

// }

// google.maps.event.addDomListener(window, 'load', initialize);

var makeMap = function(coords) {

  var mapOptions = {
    zoom: 3,
    center: new google.maps.LatLng(0, -180),
    mapTypeId: google.maps.MapTypeId.TERRAIN
  };

  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  var flightPath = new google.maps.Polyline({
    path: coords,
    geodesic: true,
    strokeColor: '#FF0000',
    strokeOpacity: 1.0,
    strokeWeight: 2
  });

  flightPath.setMap(map);

}

var routeCoordinates = []

$('#map-form').on("submit", function(event) {
  event.preventDefault();
  var form_data = $(this).serialize()
  $.ajax({
    url: this.action,
    type: this.method,
    data: form_data
  }).done(function(serverData){
    routeCoordinates = []
    var map = serverData.map
    var points = serverData.points
    debugger;
    for (index = 0; index < points.length; index++ ) {
      var lat = points[index].lat;
      var lng = points[index].lng;
      routeCoordinates.push(new google.maps.LatLng(lat, lng));
    }
    makeMap(routeCoordinates);
  });
});


