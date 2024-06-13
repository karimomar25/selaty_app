import 'package:flutter/material.dart';
import 'package:selaty_app/features/Home/presentation/widgets/best_seller_item.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height / 1.6,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.4, crossAxisCount: 2),
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: BestSellerItem(),
                )),
      ),
    );
  }
}
