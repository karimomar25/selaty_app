import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class LastItem extends StatelessWidget {
  const LastItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: Colors.grey, blurStyle: BlurStyle.solid, blurRadius: 4)
      ], borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("طبق فواكه"),
                  Text(
                    "خصم 25% بدون فوائد",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          Image.asset(
            Assets.imagesSmallFruits,
            height: height / 10.2,
          ),
          const SizedBox(
            height: 12,
          ),
          const Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 26,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(bottom: Radius.circular(8)),
                    color: Colors.grey.shade300),
              ),
              Positioned(
                right: 8,
                bottom: 13,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
