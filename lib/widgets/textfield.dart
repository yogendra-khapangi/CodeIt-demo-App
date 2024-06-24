import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final TextEditingController email;
  final IconData prefixIcon;
  final String hintText;
  final TextInputType keyboardType;

  const InputTextWidget(
      {super.key,
      required this.email,
      required this.keyboardType,
      required this.prefixIcon,
      required this.hintText,
      obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: email,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon),
      ),
      validator: (value) => value!.isEmpty ? 'required' : null,
    );
  }
}
