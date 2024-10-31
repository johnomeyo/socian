import 'package:flutter/material.dart';
import 'package:seekers/pages/homepage/widgets/accept_reject_btn.dart';

class JobDetailsCard extends StatelessWidget {
  const JobDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://www.kenyabuzz.com/public/uploads/directory/mYLAkaSE_oWz0zle.jpg"),
            ),
            SizedBox(
              width: 20,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Java",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(height: 5),
              Text("Arriving in 4 minutes"),
            ]),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 17,
                ),
                Text("4.0", style: TextStyle(fontSize: 15))
              ],
            )
          ]),
          const SizedBox(height: 10),
          const Text(
            "Job Location",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          const Text("3rd Street, Moi Avenue"),
          const SizedBox(height: 10),
          Row(
            children: [
              AcceptRejectBtn(
                color: Colors.red,
                text: 'REJECT',
                onPressed: () {},
              ),
              const Spacer(),
              AcceptRejectBtn(
                onPressed: () {},
                color: Colors.green,
                text: 'ACCEPT',
              ),
            ],
          )
        ],
      ),
    );
  }
}
