import 'package:flutter/material.dart';

class RememberMeForgotPassword extends StatefulWidget {
  const RememberMeForgotPassword({super.key});

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
              onChanged: (bool? value) {
                setState(() {
                  _isRememberMeChecked = value ?? false;
                });
              },
            ),
            const Text(
              "Remember me",
              style: TextStyle(
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
            print("Forgot Password Tapped");
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
