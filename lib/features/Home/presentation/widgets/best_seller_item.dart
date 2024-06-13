import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

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
            height: 7,
          ),
          Row(
            children: [
              const SizedBox(
                width: 6,
              ),
              const Icon(
                Icons.favorite,
                color: Colors.green,
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: 40,
                height: 20,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)),
                    color: Colors.green),
                child: const Text(
                  "جديد",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Image.asset(
            Assets.imagesSmallFruits,
            height: height / 9.1,
          ),
          const Spacer(
            flex: 6,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange),
                    child: const Text(
                      "فواكه",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  const Text("طبق فواكه"),
                  const Text("1 kg")
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(8)),
                color: Colors.grey.shade300),
            child: const Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.calendar_month,
                  color: Colors.red,
                ),
                Spacer(),
                Text(
                  "SAR 40",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
