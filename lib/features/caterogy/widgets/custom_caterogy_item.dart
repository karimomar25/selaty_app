import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class CustomCaterogyItem extends StatelessWidget {
  const CustomCaterogyItem({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
        ),
        Positioned(
            top: 30,
            left: width / 6.5,
            child: const Text(
              "فواكه",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )),
        Positioned(
          top: 110,
          child: Container(
            width: 180,
            height: 80,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Assets.imagesFruitsCover)),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8))),
          ),
        ),
        Positioned(
          top: 70,
          left: width / 7.5,
          child: const CircleAvatar(
            maxRadius: 35,
            backgroundColor: Colors.orange,
          ),
        ),
      ],
    );
  }
}
