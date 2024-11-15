import 'package:flutter/material.dart';
// Loan Banner Widget
class LoanBanner extends StatelessWidget {
  const LoanBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: size.height * 0.3,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xffF5E1BC),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Schedule jobs \nPost a Scheduled Job and\nHave Motivated Socians\nshow up that day',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Post Now',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        Positioned(
            right: -50,
            bottom: 0,
            child: Image.asset(
              "assets/employer.png",
              height: 160,
            ))
      ]),
    );
  }
}
