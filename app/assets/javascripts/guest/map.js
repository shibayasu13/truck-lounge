  $(function initMap() {


    var test = {lat: <%= @lounge.latitude %>, lng: <%= @lounge.longitude %>};
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 15,
      center: test
    });
    var transitLayer = new google.maps.TransitLayer();
    transitLayer.setMap(map);

    var contentString = '住所：<%= @lounge.address %>';
    var infowindow = new google.maps.InfoWindow({
      content: contentString
    });

    var marker = new google.maps.Marker({
      position:test,
      map: map,
      title: contentString
    });

    marker.addListener('click', function() {
      infowindow.open(map, marker);
    });
  })
