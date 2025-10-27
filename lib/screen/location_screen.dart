import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:share_plus/share_plus.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  final Location location = Location();
  final MapController mapController = MapController();
  LatLng _currentCenter = LatLng(37.5665, 126.9780); // 서울 시청
  LocationData? _currentLocation;

  Future<void> _shareLocationOnly() async {

    final locationText =
        '내 위치 \n https://maps.google.com/?q=${_currentCenter.latitude},${_currentCenter.longitude}';
    await SharePlus.instance.share(
        ShareParams(
          text:  locationText,
        ));

  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) return;
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return;
    }

    final loc = await location.getLocation();
    setState(() {
      _currentLocation = loc;
      _currentCenter = LatLng(loc.latitude!, loc.longitude!);
      mapController.move(_currentCenter, 16.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('주차 위치 공유'),
      ),
      body: Stack(
          children: [
            FlutterMap(
              mapController: mapController,
              options: MapOptions(
                initialCenter: _currentCenter,
                initialZoom: 9.2,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
                MarkerLayer(markers: _currentLocation != null
                ? [
                  Marker(
                    point: LatLng(
                      _currentLocation!.latitude!,
                      _currentLocation!.longitude!,
                    ),
                    width: 80,
                    height: 80,
                    child: const Icon(
                      Icons.location_pin,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ]
                : [],
                )
              ],
            ),
            Positioned(
              bottom: 120,
              right: 20,
              child: FloatingActionButton(
                onPressed: _shareLocationOnly,
                tooltip: '좌표 링크 공유',
                child: Icon(Icons.share),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton(
                onPressed: _getCurrentLocation,
                tooltip: '현재 위치로 이동',
                child: Icon(Icons.my_location),
              ),
            ),
          ]
      ),
    );
  }
}