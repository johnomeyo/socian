import 'package:flutter/material.dart';
import 'package:seekers/pages/homepage/widgets/job_details_card.dart';

class TimedHomePage extends StatelessWidget {
  const TimedHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://media.wired.com/photos/59269cd37034dc5f91bec0f1/master/pass/GoogleMapTA.jpg"),
                    fit: BoxFit.cover)),
            height: size.height * 0.7,
          ),
          const SizedBox(height: 20),
          const JobDetailsCard()
        ]),
      ),
    );
  }
}
