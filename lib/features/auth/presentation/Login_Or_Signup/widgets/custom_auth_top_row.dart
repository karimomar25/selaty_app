import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class CustomAuthTopRow extends StatelessWidget {
  const CustomAuthTopRow({
    super.key,
    this.onPressedBackArrow,
    required this.text,
  });
  final String text;
  final void Function()? onPressedBackArrow;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: onPressedBackArrow, icon: Icon(Icons.arrow_back_ios)),
        Text(
          text,
          style: Styles.TextStyle18,
        ),
        const Icon(Icons.camera_alt_outlined),
      ],
    );
  }
}
