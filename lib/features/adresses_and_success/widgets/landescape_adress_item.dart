import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class LandescapeAdressItem extends StatefulWidget {
  const LandescapeAdressItem({super.key});

  @override
  State<LandescapeAdressItem> createState() => _LandescapeAdressItemState();
}

class _LandescapeAdressItemState extends State<LandescapeAdressItem> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(right: 16),
      height: height / 2.1,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              alignment: Alignment.center,
              height: 25,
              width: 60,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  color: Color(0xffD5F4E6)),
              child: Text(
                "افتراضي",
                style: Styles.TextStyle14.copyWith(color: Colors.green),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "المنزل",
                style: Styles.TextStyle16Bold,
              ),
              IconButton(
                icon: _isPressed
                    ? const Icon(Icons.circle)
                    : const Icon(
                        Icons.circle_outlined,
                      ),
                color: _isPressed ? Colors.red : Colors.black,
                onPressed: () {
                  setState(() {
                    _isPressed = !_isPressed;
                  });
                },
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              textAlign: TextAlign.right,
              "5 - ح السيد عبدالحميد - ش دنشواي",
              style: Styles.TextStyle16Bold.copyWith(color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              textAlign: TextAlign.right,
              "5 - ح السيد عبدالحميد - ش دنشواي- شبين الكوم - المنوفية",
              style: Styles.TextStyle16Bold.copyWith(color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              textAlign: TextAlign.right,
              "جوال : 01091685051",
              style: Styles.TextStyle16Bold,
            ),
          ),
        ],
      ),
    );
  }
}
