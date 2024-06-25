import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class LandescapeCustomCaterogyItem extends StatelessWidget {
  const LandescapeCustomCaterogyItem({super.key, this.imageHeight});

  final double? imageHeight;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Spacer(),
          const Text(
            "فواكه",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Spacer(
            flex: 3,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: width / 2,
                height: imageHeight ?? height / 11,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Assets.imagesFruitsCover)),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8))),
              ),
              Positioned(
                left: height / 7,
                bottom: height / 8,
                child: CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
