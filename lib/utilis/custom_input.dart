import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String inputHintText;
  final Widget? inputPrefixIcon;
  final Widget? inputSuffixIcon;
  final TextEditingController inputTextController;
  final TextInputType? inputKeyboardType;

  const CustomInput({
    super.key,
    required this.inputHintText,
    this.inputPrefixIcon,
    this.inputSuffixIcon,
    this.inputKeyboardType,
    required this.inputTextController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputKeyboardType,
      controller: inputTextController,
      decoration: InputDecoration(
        hintText: inputHintText,
        prefixIcon: inputPrefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}
