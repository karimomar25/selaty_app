import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty_app/core/utils/styles.dart';

class CustomBottomRow extends StatelessWidget {
  const CustomBottomRow({
    super.key,
    required this.text,
    required this.text2,
  });
  final String text, text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Text(
                text2,
                style: Styles.TextStyle16,
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                FontAwesomeIcons.youtube,
                color: Colors.blue,
                size: 20,
              )
            ],
          ),
        ),
        Text(
          text,
          style: Styles.TextStyle16,
        ),
      ],
    );
  }
}
