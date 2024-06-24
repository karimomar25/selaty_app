import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.width,
  });

  final String text;
  final double? width;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
