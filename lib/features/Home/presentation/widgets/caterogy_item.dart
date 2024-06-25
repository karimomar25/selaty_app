import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class CaterogyItem extends StatelessWidget {
  const CaterogyItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(children: [
          Text(
            "فواكه",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 90,
                height: 60,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Assets.imagesFruitsCover))),
              ),
              Positioned(
                bottom: height / 23,
                left: height / 38,
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                ),
              ),
            ],
          ),
        ]));

    // const Positioned(
    //     top: 10,
    //     left: 22.5,
    //     child:

    // Text(
    //       "فواكه",
    //       style: TextStyle(fontWeight: FontWeight.bold),
    //     )),
    // Positioned(
    //   top: 60,
    //   child: Container(
    //     width: 90,
    //     height: 80,
    //     decoration: const BoxDecoration(
    //         image: DecorationImage(
    //             fit: BoxFit.cover,
    //             image: AssetImage(Assets.imagesFruitsCover))),
    //   ),
    // ),
    // const Positioned(
    //   top: 35,
    //   left: 22.5,
    //   child: CircleAvatar(
    //     backgroundColor: Colors.orange,
    //   ),
    // )
  }
}
