import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/adresses_and_success/success_view.dart';
import 'package:selaty_app/features/adresses_and_success/widgets/adress_item.dart';
import 'package:selaty_app/features/auth/presentation/SignUp/widgets/custom_button.dart';
import 'package:selaty_app/features/cart/empty_cart_view.dart';
import 'package:selaty_app/features/fruit_caterogy/widgets/fruit_view_top_row.dart';
import 'package:short_navigation/short_navigation.dart';

class AdressesView extends StatefulWidget {
  const AdressesView({super.key});

  @override
  State<AdressesView> createState() => _AdressesViewState();
}

class _AdressesViewState extends State<AdressesView> {
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
                    Go.backAndTo(const EmptyCartView());
                  },
                  textColor: Colors.black,
                  text: "عنوان التسليم",
                  color: Colors.black),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "يشحن الي",
                  style: Styles.TextStyle20.copyWith(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: height / 1.4,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: AdressItem(),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Go.to(const SuccessView());
                },
                child: const CustomButton(
                    text: "التسليم لهذا العنوان", color: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }
}
