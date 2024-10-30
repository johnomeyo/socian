import 'package:flutter/material.dart';

class AuthNavigationText extends StatelessWidget {
  final Function()? onPressed;
  final String beginningText;
  final String clickableText;
  const AuthNavigationText(
      {super.key,
      this.onPressed,
      required this.beginningText,
      required this.clickableText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          beginningText,
          style: const TextStyle(
            color: Colors.purple,
            fontSize: 17,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(clickableText,
              style: TextStyle(
                color: Colors.amber.shade500,
                fontSize: 17,
              )),
        ),
      ],
    );
  }
}
