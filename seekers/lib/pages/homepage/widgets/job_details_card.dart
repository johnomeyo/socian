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
            Icon(
              Icons.location_pin,
              color: Colors.grey,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "3rd Street, Moi Avenue",
              style: TextStyle(fontSize: 17),
            ),
          ]),
          // const SizedBox(height: 10),
          const VerticalSlider(),
          const Text("Ksh. 150/Hr", style: TextStyle(fontSize:18, fontWeight: FontWeight.bold),),
          const Row(
            children: [
              Text("EST", style: TextStyle(fontSize:17),),
              SizedBox(width: 10,),
              Text(
                "Ksh. 3450",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
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

class VerticalSlider extends StatelessWidget {
  const VerticalSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dot and line indicator
              Column(
                children: [
                  const Icon(Icons.square, size: 8, color: Colors.black),
                  Container(
                    width: 2,
                    height: 40,
                    color: Colors.grey,
                  ),
                  const Icon(Icons.square, size: 8, color: Colors.black),
                ],
              ),
              const SizedBox(width: 8),
              // Text details
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Start Time',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '8:00 AM',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  // SizedBox(height: 20), // Spacing between sections
                  // Bottom section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'End Time',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '5:00 PM',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
