import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/Home/presentation/widgets/show_all_button.dart';

class DescrebtionRow extends StatelessWidget {
  const DescrebtionRow({super.key, required this.text, this.text2});
  final String text;
  final String? text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ShowAllButton(),
        const Spacer(),
        Text(
          text2!,
          style: Styles.TextStyle14.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: Styles.TextStyle18,
        ),
      ],
    );
  }
}
