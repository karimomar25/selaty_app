import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class HomeTopRow extends StatelessWidget {
  const HomeTopRow({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.camera_alt_outlined))),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              textAlign: TextAlign.center,
              "مصطفي الاعصر",
              style: Styles.TextStyle16Bold,
            ),
            Row(
              children: [
                Text(
                  "المنوفية - شبين الكوم",
                  style: Styles.TextStyle14.copyWith(color: Colors.grey),
                ),
                const Icon(
                  Icons.location_on,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
        const CircleAvatar(
          backgroundColor: Colors.yellow,
        )
      ],
    );
  }
}
