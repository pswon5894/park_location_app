import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('주차 위치 공유'),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(37.5665, 126.9780), // 서울 좌표
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(37.5665, 126.9780),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.location_pin, color: Colors.red, size: 40),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // 위치 아이콘 버튼을 눌렀을 때 실행될 코드를 여기에 작성합니다.
                print('위치 아이콘 버튼 클릭됨');
              },
              child: Icon(Icons.my_location),
              tooltip: '현재 위치로 이동',
            ),
          ),
          Positioned(
            bottom: 120,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // 위치 아이콘 버튼을 눌렀을 때 실행될 코드를 여기에 작성합니다.
                print('공유 아이콘 버튼 클릭됨');
              },
              child: Icon(Icons.share),
              tooltip: '좌표 링크 공유',
            ),
          ),
        ]
      ),
    );
  }
}
