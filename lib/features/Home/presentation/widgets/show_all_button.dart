import 'package:flutter/material.dart';

class ShowAllButton extends StatelessWidget {
  const ShowAllButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: const Text("مشاهدة الكل"));
  }
}
