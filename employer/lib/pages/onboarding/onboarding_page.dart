import 'package:employer/pages/onboarding/chart.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          const Positioned(
              top: 0,
              right: 0,
              child: FilledButton.tonal(
                  onPressed: null,
                  child: Text(
                    "Socian",
                    style: TextStyle(color: Colors.purple),
                  ))),
          Positioned(
            bottom: 10,
            right: 10,
            child: CircleAvatar(
              backgroundColor: Colors.purple,
              radius: 25,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                  )),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Instant\nJobs,\nAnytime\nwith Socian\nInc.',
                  style: TextStyle(
                      fontSize: 55,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Chart(),
            ],
          ),
        ]),
      ),
    );
  }
}
