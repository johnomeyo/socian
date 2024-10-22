import 'package:flutter/material.dart';

class MapsContainer extends StatelessWidget {
  const MapsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.35,
      child: const Center(
        child: Text('Map Image Placeholder'),
      ),
    );
  }
}
