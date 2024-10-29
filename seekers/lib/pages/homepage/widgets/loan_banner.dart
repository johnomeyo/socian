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
              '0% interest, \nTake a transport loan\n and pay it once you get \npaid',
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
                'Apply Now',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              "assets/pointing_customer.png",
              height: 160,
            ))
      ]),
    );
  }
}
