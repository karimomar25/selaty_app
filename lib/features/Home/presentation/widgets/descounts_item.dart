import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class DiscountsItem extends StatelessWidget {
  const DiscountsItem({super.key, required this.itemColor, required this.text});

  final Color itemColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: itemColor, borderRadius: BorderRadius.circular(12)),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: Styles.TextStyle18.copyWith(color: Colors.white),
      ),
    );
  }
}
