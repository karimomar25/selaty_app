import 'package:flutter/material.dart';
import 'package:selaty_app/features/cart/cart_view.dart';
import 'package:selaty_app/features/caterogy/caterogy_view.dart';
import 'package:selaty_app/features/fruit_caterogy/widgets/circle_ananas_item.dart';
import 'package:selaty_app/features/fruit_caterogy/widgets/fruit_view_top_row.dart';
import 'package:selaty_app/features/home/presentation/widgets/best_seller_gridview.dart';
import 'package:selaty_app/features/home/presentation/widgets/search_bar.dart';
import 'package:short_navigation/short_navigation.dart';

class FruitCaterogyView extends StatelessWidget {
  const FruitCaterogyView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            Container(
              color: const Color(0xff29C17B),
              height: 8,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height / 6.4,
                  decoration: const BoxDecoration(color: Color(0xff29C17B)),
                ),
                Positioned(
                  top: 25,
                  child: SizedBox(
                    width: width,
                    child: FruitViewTopRow(
                      onPressedBackArrow: () {
                        Go.backAndto(const CaterogyView());
                      },
                      textColor: Colors.white,
                      text: "الفاكهة",
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                    left: width / 2.5,
                    top: height / 9.5,
                    child: const CircleAnanasItem()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      const Expanded(child: CustomSearchBar()),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red),
                        child: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  BestSellerGridView(
                    onTap: () {
                      Go.to(const CartView());
                    },
                    scrollDirection: Axis.vertical,
                    childAspectRatio: 0.8,
                    gridHeight: height / 1.8,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
