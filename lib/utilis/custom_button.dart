import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ElevatedButton(
        child: Text("Login"),
        onPressed: () {
          print("Elevated button Clicked");
        },
      ),
    );
  }
}
