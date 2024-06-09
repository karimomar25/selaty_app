import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty_app/core/utils/styles.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.borderColor,
    required this.texrColor,
    this.icon,
    this.iconSize,
    this.iconColor,
  });

  final String text;
  final double? iconSize;
  final Color? iconColor;
  final IconData? icon;
  final Color texrColor;
  final Color borderColor;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 45.h,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: Styles.TextStyle16.copyWith(
                  color: texrColor, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class GPlus extends StatelessWidget {
  const GPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Google",
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }
}
