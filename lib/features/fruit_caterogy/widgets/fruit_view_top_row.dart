import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class FruitViewTopRow extends StatelessWidget {
  const FruitViewTopRow({
    super.key,
    this.onPressedBackArrow,
    required this.text,
    required this.color,
    required this.textColor,
  });
  final String text;
  final Color textColor;
  final Color color;
  final void Function()? onPressedBackArrow;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 32,
          height: 38,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: IconButton(
              onPressed: onPressedBackArrow,
              icon: Icon(
                Icons.arrow_back_ios,
                color: color,
              )),
        ),
        Text(text, style: Styles.TextStyle18.copyWith(color: textColor)),
        Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Icon(Icons.camera_alt_outlined, color: color)),
      ],
    );
  }
}
