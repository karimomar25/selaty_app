import 'package:flutter/material.dart';
import 'package:selaty_app/features/Home/presentation/widgets/best_seller_item.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 434,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
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
