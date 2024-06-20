import 'package:flutter/material.dart';
import 'package:selaty_app/features/auth/presentation/signup/widgets/custom_button.dart';
import 'package:selaty_app/features/cart/empty_cart_view.dart';
import 'package:selaty_app/features/cart/widgets/cart_item.dart';
import 'package:selaty_app/features/cart/widgets/fees_item.dart';
import 'package:selaty_app/features/fruit_caterogy/widgets/fruit_view_top_row.dart';
import 'package:short_navigation/short_navigation.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const FruitViewTopRow(
                  textColor: Colors.black,
                  text: "عربة التسوق",
                  color: Colors.black),
              SizedBox(
                height: height / 1.8,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: CartItem(),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const FeesItem(),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                  onTap: () {
                    Go.to(const EmptyCartView());
                  },
                  child: const CustomButton(text: "الدفع", color: Colors.green))
            ],
          ),
        ),
      ),
    );
  }
}
