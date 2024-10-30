import 'package:flutter/material.dart';
import 'package:seekers/auth/auth_header.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/auth/custom_textfield.dart';
import 'package:seekers/auth/forgot_password/pink_button.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
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
                title: "Forgot Password?",
                subtitle:
                    "To reset your password you need your email or mobile number that can be authenticated"),
            const SizedBox(
              height: 60,
            ),
            Image.asset("assets/forgot_password.png", height: 100,),
            const SizedBox(
              height: 60,
            ),
            CustomTextField(
                labelText: "Email",
                controller: emailController,
                hintText: "johndoe@gmail.com"),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "RESET PASSWORD",
              onPressed: () {
                // Handle login logic
              },
            ),
            const SizedBox(
              height: 20,
            ),
            PinkButton(onPressed: () {})
          ],
        ),
      ),
    );
  }
}
