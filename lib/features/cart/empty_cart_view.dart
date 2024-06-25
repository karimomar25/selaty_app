import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/adresses_and_success/adresses_view.dart';
import 'package:selaty_app/features/auth/presentation/signup/widgets/custom_button.dart';
import 'package:selaty_app/features/cart/cart_view.dart';
import 'package:selaty_app/features/fruit_caterogy/widgets/fruit_view_top_row.dart';
import 'package:short_navigation/short_navigation.dart';

class EmptyCartView extends StatelessWidget {
  const EmptyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    FruitViewTopRow(
                        onPressedBackArrow: () {
                          Go.backAndTo(const CartView());
                        },
                        text: "عربة التسوق",
                        color: Colors.black,
                        textColor: Colors.black),
                    const SizedBox(
                      height: 82,
                    ),
                    Container(
                      height: height / 1.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.imagesShoppingBag,
                            height: 200,
                          ),
                          const Text(
                            "!عربة التسوق فارغة",
                            style: Styles.TextStyle30Bold,
                          ),
                          Text(
                            "اجعل سلتك سعيدة واضف منتجات",
                            style:
                                Styles.TextStyle20.copyWith(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 38),
                            child: GestureDetector(
                              onTap: () {
                                Go.to(const AdressesView());
                              },
                              child: const CustomButton(
                                  text: "ابدأ التسوق", color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    FruitViewTopRow(
                        onPressedBackArrow: () {
                          Go.backAndTo(const CartView());
                        },
                        text: "عربة التسوق",
                        color: Colors.black,
                        textColor: Colors.black),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: height / 1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Assets.imagesShoppingBag,
                                height: 200,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "!عربة التسوق فارغة",
                                style: Styles.TextStyle30Bold,
                              ),
                              Text(
                                "اجعل سلتك سعيدة واضف منتجات",
                                style: Styles.TextStyle20.copyWith(
                                    color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Go.to(const AdressesView());
                                },
                                child: const CustomButton(
                                    width: 250,
                                    text: "ابدأ التسوق",
                                    color: Colors.green),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
