import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:selaty_app/core/utils/app_images.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/Home/presentation/widgets/show_all_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: HomeTopRow(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  const Expanded(child: SearchBar()),
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
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const SliverToBoxAdapter(
              child: BestSellerRow(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                width: 250,
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        Assets.imagesFruitsCover,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeTopRow extends StatelessWidget {
  const HomeTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: const Icon(Icons.camera_alt_outlined)),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              textAlign: TextAlign.center,
              "مصطفي الاعصر",
              style: Styles.TextStyle16Bold,
            ),
            Row(
              children: [
                Text(
                  "المنوفية - شبين الكوم",
                  style: Styles.TextStyle14.copyWith(color: Colors.grey),
                ),
                const Icon(
                  Icons.location_on,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
        const CircleAvatar(
          backgroundColor: Colors.yellow,
        )
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black12),
              borderRadius: BorderRadius.circular(12)),
          hintText: "ابحث عن المنتجات",
          suffixIcon: const Icon(Icons.close),
          prefixIcon: const Icon(Icons.search)),
    );
  }
}

class BestSellerRow extends StatelessWidget {
  const BestSellerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ShowAllButton(),
        const Spacer(),
        Text(
          "أعلي المبيعات",
          style: Styles.TextStyle14.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "القيمة الافضل",
          style: Styles.TextStyle18,
        ),
      ],
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
