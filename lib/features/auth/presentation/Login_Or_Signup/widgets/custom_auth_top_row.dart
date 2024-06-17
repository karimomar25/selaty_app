import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class CustomTopRow extends StatelessWidget {
  const CustomTopRow({
    super.key,
    this.onPressedBackArrow,
    required this.text,
    required this.color,
  });
  final String text;
  final Color color;
  final void Function()? onPressedBackArrow;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: onPressedBackArrow,
            icon: Icon(
              Icons.arrow_back_ios,
              color: color,
            )),
        Text(text, style: Styles.TextStyle18.copyWith(color: color)),
        Icon(Icons.camera_alt_outlined, color: color),
      ],
    );
  }
}
