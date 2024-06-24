import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key, required this.text, this.icon, this.width});
  final String text;
  final Icon? icon;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: TextField(
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            prefixIcon: icon,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(12)),
            hintText: text),
      ),
    );
  }
}
