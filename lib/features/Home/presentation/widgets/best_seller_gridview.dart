import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:selaty_app/features/home/presentation/widgets/best_seller_item.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({
    super.key,
    this.scrollDirection,
    this.gridHeight,
    this.childAspectRatio,
    this.onTap,
  });
  final Axis? scrollDirection;
  final void Function()? onTap;
  final double? gridHeight;
  final double? childAspectRatio;
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: gridHeight,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: childAspectRatio!, crossAxisCount: 2),
          reverse: true,
          scrollDirection: scrollDirection!,
          itemCount: 16,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: GestureDetector(
                    onTap: onTap, child: const BestSellerItem()),
              )),
    );
  }
}
