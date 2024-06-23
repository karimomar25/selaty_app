import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
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
      height: height / 7,
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
