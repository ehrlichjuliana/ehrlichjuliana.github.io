import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;
  Set<Marker> markers = new Set<Marker>();
  double lat = -23.6099564;
  double long = -46.734412;
  LatLng position = new LatLng(0, 0);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    position = LatLng(lat, long);
    final Marker marker = Marker(
        markerId: new MarkerId("123456"),
        position: position,
        infoWindow: InfoWindow(
          title: "Consultorio Juiliana",
        ));
    markers.add(marker);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapa"),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(target: position, zoom: 16.0),
        markers: markers,
      ),
    );
  }
}
