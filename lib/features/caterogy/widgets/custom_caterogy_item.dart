import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class CustomCaterogyItem extends StatelessWidget {
  const CustomCaterogyItem({super.key, this.imageHeight});

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
          // const CircleAvatar(
          //   maxRadius: 35,
          //   backgroundColor: Colors.orange,
          // ),
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
              const Positioned(
                left: 55,
                bottom: 50,
                child: CircleAvatar(
                  maxRadius: 35,
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
