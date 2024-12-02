import 'package:flutter/material.dart';

class MapsContainer extends StatelessWidget {
  const MapsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height * 0.35,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://cdn.wccftech.com/wp-content/uploads/2017/03/Google-Maps.jpg"),
                  fit: BoxFit.cover)),
        ));
  }
}
