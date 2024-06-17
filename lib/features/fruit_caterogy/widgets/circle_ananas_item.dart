import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class CircleAnanasItem extends StatelessWidget {
  const CircleAnanasItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.green.shade100,
          maxRadius: 45,
        ),
        const Positioned(
          top: 10,
          left: 9,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 35,
            backgroundImage: AssetImage(Assets.imagesAnanaas),
          ),
        )
      ],
    );
  }
}
