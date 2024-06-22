import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/adresses_and_success/adresses_view.dart';
import 'package:selaty_app/features/auth/presentation/signup/widgets/custom_button.dart';
import 'package:selaty_app/features/fruit_caterogy/widgets/fruit_view_top_row.dart';
import 'package:selaty_app/features/home/presentation/custom_curved_navigation_bar.dart';
import 'package:short_navigation/short_navigation.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              FruitViewTopRow(
                  onPressedBackArrow: () {
                    Go.backAndTo(const CustomCurvedNavigationBar());
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
                    color: const Color(0xff29C17B)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.imagesShoppingBag,
                      height: 200,
                    ),
                    Text(
                      "! طلبك ناجح",
                      style:
                          Styles.TextStyle30Bold.copyWith(color: Colors.white),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      "شكرا علي الطلب ستحصل عليه خلال بضع دقائق",
                      style: Styles.TextStyle20.copyWith(color: Colors.white),
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
                            text: "ترتيب المسار", color: Color(0xff383248)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
