import 'package:flutter/material.dart';
import 'package:seekers/auth/auth_header.dart';
import 'package:seekers/auth/auth_navigation_text.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/auth/forgot_password/password_change_success_page.dart';
import 'package:seekers/auth/forgot_password/pink_button.dart';

class ResendResetLinkPage extends StatelessWidget {
  const ResendResetLinkPage({super.key});

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
                title: "Check your email",
                subtitle:
                    "We have sent the reset password to the email address"),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              "assets/check_email.png",
              height: 100,
            ),
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "OPEN EMAIL",
              onPressed: () {
                // Handle login logic
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const PasswordChangeSuccessPage()));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const PinkButton(),
            const AuthNavigationText(beginningText: "You haven't received the email?", clickableText: "Resend")
          ],
        ),
      ),
    );
  }
}
