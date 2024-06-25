import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class CircleAnanasItem extends StatelessWidget {
  const CircleAnanasItem({super.key, this.maxRadius, this.ananasaMaxRadius});
  final double? maxRadius;
  final double? ananasaMaxRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.green.shade100,
          maxRadius: maxRadius ?? 45,
        ),
        Positioned(
          top: 10,
          left: 9,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: ananasaMaxRadius ?? 35,
            backgroundImage: const AssetImage(Assets.imagesAnanaas),
          ),
        )
      ],
    );
  }
}
