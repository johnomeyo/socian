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
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/d252/5c23/41ac11fd8f67a5f633eadace725fee4b?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qBRYkub-H-bMLM7bCpX4XPn4NnC7~gMwLjG4OkgqTXUpaUBC6p7dwXIbjq5a8YrVdhRTzGEN5Bi2Jkfjpy6qSJgOBSY7kNekS5DPShf52lcu0cRrZt3SQnm5gkvLaAgc1JohH-Gb6qbVWZD3Van5fgJX7coq8M1xTdroWknd4111FSgA7LgayiEKy6i2VADGSittPwrnUvLgBQSm20xtLB826D~CflWvRoUjcGRsM~uEHuFDm2YaWtxlpvcXDOnLJBvkxAYxD4SL52~1rTcMESnVes5-V4-mKd8EputqanNGHVzUbA2EhQjRlLfYN-azxO~JPQfP2vGyU9g8fzbumg__",
              height: 160,
            ))
      ]),
    );
  }
}
