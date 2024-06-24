import 'package:flutter/material.dart';

class InputPasswordWidget extends StatelessWidget {
  final TextEditingController password;
  final IconData suffixIcon;
  final IconData prefixIcon;
  final String hintText;

  const InputPasswordWidget({
    super.key,
    required this.password,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: password,
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon)),
    );
  }
}
