// pages/signup_page.dart
import 'package:flutter/material.dart';
import 'package:seekers/auth/auth_button.dart';
import 'package:seekers/auth/auth_header.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/auth/custom_textfield.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.15),
              const AuthHeader(
                  title: "Create an Account",
                  subtitle:
                      "Let's create your account  and open doors to hourly job opportunities"),
              const SizedBox(height: 40),
              CustomTextField(
                labelText: "Full Name",
                controller: nameController,
                hintText: 'John Doe',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                labelText: "Phone Number",
                keyboardType: TextInputType.phone,
                controller: phoneController,
                hintText: '+2547124569',
              ),
              const SizedBox(height: 20),
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
                hintText: '*******',
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "SIGN UP",
                onPressed: () {
                  // Handle signup logic
                },
              ),
              const SizedBox(height: 20),
              AuthButton(
                text: "SIGN UP WITH GOOGLE",
                onPressed: () {
                  // Handle Google Sign-Up
                },
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navigate to login page
                },
                child: const Text("Already have an account? Sign in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
