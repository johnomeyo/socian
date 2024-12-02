import 'package:employer/main.dart';
import 'package:employer/pages/jobviewpage/widgets/action_buttons.dart';
import 'package:employer/pages/jobviewpage/widgets/info_card.dart';
import 'package:employer/pages/jobviewpage/widgets/job_description_section.dart';
import 'package:employer/pages/jobviewpage/widgets/job_info_section.dart';
import 'package:employer/pages/jobviewpage/widgets/job_payment_details.dart';
import 'package:employer/pages/jobviewpage/widgets/maps_container.dart';
import 'package:employer/pages/jobviewpage/widgets/socian_experience_card.dart';
import 'package:employer/pages/walletpage/customb_btn.dart';
import 'package:flutter/material.dart';

class ViewSocianDetailsPage extends StatelessWidget {
  const ViewSocianDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Image - Placeholder for the map image
              const MapsContainer(),
              const SizedBox(height: 16),

              // Job Details Section
              const JobInfoSection(),
              const SizedBox(height: 20),

              // Job Payment Details Section
              const JobPaymentDetails(),
              const SizedBox(height: 20),

              // Start Shift Button
              CustomButton(
                text: "START SHIFT",
                onPressed: () => showDialog(
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainScreen()));
                          },
                          child: const Text("Continue"))
                    ],
                    content: const SizedBox(
                      height: 140,
                      child: Column(
                        children: [
                          Icon(
                            Icons.check_circle,
                            size: 80,
                            color: Colors.green,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Navigate to the homepage and click on the clock icon on the bottom right side of the screen to see the information about the shift."),
                        ],
                      ),
                    ),
                  ),
                  context: context,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              const SocianExperienceCard(
                experiences: [
                  "Chef at KFC",
                  "Chef at CJ's",
                  "Chef at Laleeys",
                  "Chef at Java House",
                ],
              ),

              const SizedBox(height: 20),

              // Job Description Section
              const JobDescriptionSection(),
              const SizedBox(height: 20),

              // Bottom Action Buttons
              const BottomActionButtons(),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

// Bottom action buttons: Share work details and Contact worker
class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      child: Column(
        children: [
          ActionButton(
              text: 'Share work details', icon: Icons.file_upload_outlined),
          ActionButton(text: 'Contact worker', icon: Icons.call),
        ],
      ),
    );
  }
}
