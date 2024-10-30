import 'package:flutter/material.dart';
import 'package:seekers/auth/forgot_password/forgot_password_page.dart';

class RememberMeForgotPassword extends StatefulWidget {
  final String text;
  const RememberMeForgotPassword({super.key, required this.text});

  @override
  State<RememberMeForgotPassword> createState() =>
      _RememberMeForgotPasswordState();
}

class _RememberMeForgotPasswordState extends State<RememberMeForgotPassword> {
  bool _isRememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            // Remember Me Checkbox
            Checkbox(
              activeColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              value: _isRememberMeChecked,
              semanticLabel: "Check Box",
              onChanged: (bool? value) {
                setState(() {
                  _isRememberMeChecked = value ?? false;
                });
              },
            ),
            Text(
              widget.text,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        // Forgot Password Gesture
        TextButton(
          onPressed: () {
            // Handle forgot password tap
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ForgotPasswordPage()));
          },
          child: const Text(
            "Forgot Password ?",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.purple,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
