import 'package:employer/pages/jobviewpage/view_socian_details_page.dart';
import 'package:employer/pages/walletpage/customb_btn.dart';
import 'package:employer/pages/widgets/auth_header.dart';
import 'package:flutter/material.dart';

class JobPostResponsePage extends StatelessWidget {
  const JobPostResponsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: FutureBuilder<bool>(
            future: _simulateJobPostResponse(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const LoadingState();
              } else if (snapshot.hasData && snapshot.data == true) {
                return const SuccessState();
              } else {
                return const ErrorState(); // Fallback for unexpected behavior
              }
            },
          ),
        ),
      ),
    );
  }

  Future<bool> _simulateJobPostResponse() async {
    await Future.delayed(const Duration(seconds: 10));
    return true; // Simulate a successful response
  }
}

class LoadingState extends StatelessWidget {
  const LoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AuthHeader(
          title: "Connecting...",
          subtitle:
              "Your job was posted. Please wait for responses from socians.",
        ),
        SizedBox(height: 40),
        CircularProgressIndicator.adaptive(),
      ],
    );
  }
}

class SuccessState extends StatelessWidget {
  const SuccessState({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const AuthHeader(
          title: "Successfully!",
          subtitle:
              "Click on the Continue button to check the details of the selected Socian and see their experiences.",
        ),
        const SizedBox(height: 40),
        Image.asset(
          'assets/check_email.png',
          height: size.height * 0.2,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 60),
        CustomButton(
          text: "CONTINUE",
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ViewSocianDetailsPage()),
          ),
         
        ),
      ],
    );
  }
}

class ErrorState extends StatelessWidget {
  const ErrorState({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthHeader(
      title: "Error",
      subtitle: "An unexpected error occurred. Please try again later.",
    );
  }
}
