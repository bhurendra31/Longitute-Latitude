import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationExp extends StatefulWidget {
  const LocationExp({super.key});

  @override
  State<LocationExp> createState() => _LocationExpState();
}

class _LocationExpState extends State<LocationExp> {
String location = "";
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getposition().then((Position) {
      setState(() {
        location=
        "Latitude: ${Position.latitude} and Longitude: ${Position.longitude}";
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Future<Position> getposition() async{
  await Geolocator.requestPermission();
  await Geolocator.isLocationServiceEnabled();
  Position? position = await Geolocator.getCurrentPosition();
  return position;
  }
  
  
}