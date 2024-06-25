import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class LandscapeCartItem extends StatefulWidget {
  const LandscapeCartItem({super.key});

  @override
  State<LandscapeCartItem> createState() => _LandscapeCartItemState();
}

class _LandscapeCartItemState extends State<LandscapeCartItem> {
  int fruitNumber = 0;
  fruitNumberIncreament() {
    fruitNumber++;
  }

  fruitNumberDecreament() {
    fruitNumber--;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.only(right: 16),
      height: height / 3.1,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "35.00 x$fruitNumber",
                style: Styles.TextStyle16.copyWith(
                    color: Colors.green, fontWeight: FontWeight.bold),
              ),
              const Text(
                "كمثري امريكي",
                style: Styles.TextStyle18,
              ),
              const Text(
                "1 kg",
                style: Styles.TextStyle16,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    fruitNumberIncreament();
                  });
                },
                child: const Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "$fruitNumber",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      fruitNumberDecreament();
                    });
                  },
                  child: const Text("-", style: TextStyle(fontSize: 20))),
            ],
          ),
        ],
      ),
    );
  }
}
