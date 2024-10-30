import 'package:flutter/material.dart';
import 'package:seekers/auth/auth_header.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/auth/forgot_password/pink_button.dart';

class PasswordChangeSuccessPage extends StatelessWidget {
  const PasswordChangeSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.15),
            const AuthHeader(
                title: "Successfully",
                subtitle:
                    "Your password has been updated, please change your password regularly to avoid this happening"),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              "assets/success_pass_change.png",
              height: 100,
            ),
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "CONTINUE",
              onPressed: () {
                // Handle login logic
               
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const PinkButton()
          ],
        ),
      ),
    );
  }
}
