import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class LoginOrSignUpCustomButton extends StatelessWidget {
  const LoginOrSignUpCustomButton(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap,
      this.width});

  final String text;
  final Color color;
  final double? width;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width ?? double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Text(
          text,
          style: Styles.TextStyle24.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
