import 'package:flutter/material.dart';

class PinkButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PinkButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: const Text(
          "BACK TO LOGIN",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
