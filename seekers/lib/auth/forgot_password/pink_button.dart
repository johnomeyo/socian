import 'package:flutter/material.dart';
import 'package:seekers/auth/login_page.dart';

class PinkButton extends StatelessWidget {
  const PinkButton({
    super.key,
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
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: const Text(
          "BACK TO LOGIN",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
