import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search notes",
        prefixIcon: Icon(Icons.search_rounded),

        // border: InputBorder,
      ),
    );
  }
}
