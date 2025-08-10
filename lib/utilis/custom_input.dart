import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String inputHintText;
  final Widget? inputPrefixIcon;
  final Widget? inputSuffixIcon;
  final TextEditingController inputTextController;
  final TextInputType? inputKeyboardType;
  final bool inputObscureText;

  const CustomInput({
    super.key,
    required this.inputHintText,
    this.inputPrefixIcon,
    this.inputSuffixIcon,
    this.inputKeyboardType,
    required this.inputTextController,
    required this.inputObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: inputObscureText,
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
