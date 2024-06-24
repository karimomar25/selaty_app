import 'package:flutter/material.dart';
import 'package:selaty_app/core/models/discounts_model.dart';
import 'package:selaty_app/features/home/presentation/widgets/descounts_item.dart';

class DescountsItemGridView extends StatelessWidget {
  const DescountsItemGridView({
    super.key,
    this.height,
    this.childAspectRatio,
    this.crossAxisCount,
  });
  final double? height;
  final double? childAspectRatio;
  final int? crossAxisCount;
  @override
  Widget build(BuildContext context) {
    double gridHeight = MediaQuery.of(context).size.height;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: height ?? gridHeight / 2.8,
        child: GridView.builder(
          itemCount: 6,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: childAspectRatio ?? 1,
              crossAxisSpacing: 12,
              mainAxisSpacing: 10,
              crossAxisCount: crossAxisCount ?? 3),
          itemBuilder: (context, index) {
            return DiscountsItem(
              text: discount[index].discount,
              itemColor: discount[index].itemColor,
            );
          },
        ),
      ),
    );
  }
}
