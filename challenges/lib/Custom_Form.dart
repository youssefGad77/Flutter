import 'package:flutter/material.dart';

class TextCustomForm extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? Function(String? vlaue) validator;
  final bool obsecure;
  final TextEditingController controller;
  const TextCustomForm({
    super.key,
    required this.icon,
    required this.label,
    required this.validator,
    this.obsecure = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obsecure,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder()
      ),

      );
  }
}
