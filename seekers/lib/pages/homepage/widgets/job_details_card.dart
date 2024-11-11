import 'package:flutter/material.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/pages/job_details_page.dart';

class JobDetailsCard extends StatelessWidget {
  final Function()? rejectBtnPressed;
  const JobDetailsCard({super.key, this.rejectBtnPressed});

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
          const Row(children: [
             Icon(Icons.location_pin, color: Colors.grey, size:20,),
             SizedBox(width: 10,),
            Text("3rd Street, Moi Avenue", style: TextStyle(fontSize: 17),),
          ]),
          const SizedBox(height: 10),
          const Text(
            "Ksh. 3450",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(height: 10),
          CustomButton(
              text: 'ACCEPT',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const JobDetailsPage()));
              }),
        ],
      ),
    );
  }
}
