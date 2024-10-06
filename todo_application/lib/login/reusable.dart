import 'package:flutter/material.dart';

TextFormField reusableTextFormField(TextEditingController controller,
    bool isPasswordType, IconData icon, String text) {
  return TextFormField(
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    controller: controller,
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      hintText: text,
      prefixIcon: Icon(icon),
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.black12, // Default border color
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
