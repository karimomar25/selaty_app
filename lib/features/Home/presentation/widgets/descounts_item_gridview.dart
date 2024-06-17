import 'package:flutter/material.dart';
import 'package:selaty_app/core/models/discounts_model.dart';
import 'package:selaty_app/features/home/presentation/widgets/descounts_item.dart';

class DescountsItemGridView extends StatelessWidget {
  const DescountsItemGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: height / 2.8,
        child: GridView.builder(
          itemCount: 6,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 12, mainAxisSpacing: 10, crossAxisCount: 3),
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
