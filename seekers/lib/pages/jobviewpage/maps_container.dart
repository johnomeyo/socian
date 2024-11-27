import 'package:flutter/material.dart';

class MapsContainer extends StatelessWidget {
  const MapsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image:  NetworkImage(
                "https://www.shutterstock.com/shutterstock/photos/1661529616/display_1500/stock-vector-flat-street-map-with-direction-gps-navigation-on-road-town-with-pins-simple-information-scheme-of-1661529616.jpg"),
            fit: BoxFit.cover),
      ),
      
    );
  }
}
