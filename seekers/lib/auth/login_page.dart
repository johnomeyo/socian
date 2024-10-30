// pages/login_page.dart
import 'package:flutter/material.dart';
import 'package:seekers/auth/auth_header.dart';
import 'package:seekers/auth/auth_navigation_text.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/auth/custom_checkbox.dart';
import 'package:seekers/auth/custom_textfield.dart';
import 'package:seekers/auth/google_sign_in_btn.dart';
import 'package:seekers/auth/sign_up.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.15),
              const AuthHeader(
                  title: "Welcome Back",
                  subtitle:
                      "Your journey to hourly jobs begins here. Let's get started"),
              const SizedBox(height: 40),
              CustomTextField(
                labelText: "Email",
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                hintText: 'johndoe@gmail.com',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                labelText: "Password",
                isPassword: true,
                controller: passwordController,
                hintText: '*********',
              ),
              const SizedBox(height: 20),
              const RememberMeForgotPassword(
                text: 'Remember Me',
              ),
              CustomButton(
                text: "LOGIN",
                onPressed: () {
                  // Handle login logic
                },
              ),
              const SizedBox(height: 20),
              GoogleSignInButton(
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              AuthNavigationText(
                beginningText: "Dont have an account? ",
                clickableText: "Sign Up",
                onPressed: () {
                  Navigator.push((context),
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
