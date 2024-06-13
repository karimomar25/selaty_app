import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';
import 'package:selaty_app/features/Home/presentation/widgets/best_seller_gridview.dart';
import 'package:selaty_app/features/Home/presentation/widgets/caterogy_item_listview.dart';
import 'package:selaty_app/features/Home/presentation/widgets/descounts_item_gridview.dart';
import 'package:selaty_app/features/Home/presentation/widgets/descrebtion_row.dart';
import 'package:selaty_app/features/Home/presentation/widgets/fruits_image_listview.dart';
import 'package:selaty_app/features/Home/presentation/widgets/home_top_row.dart';
import 'package:selaty_app/features/Home/presentation/widgets/last_item_gridview.dart';
import 'package:selaty_app/features/Home/presentation/widgets/search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
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
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              const SliverToBoxAdapter(
                child: DescrebtionRow(
                  text: "القيمة الافضل",
                  text2: "اعلي المبيعات",
                ),
              ),
              const FruitsImageListView(),
              const SliverToBoxAdapter(
                child: DescrebtionRow(
                  text: "التصنيفات",
                  text2: "",
                ),
              ),
              const CaterogyItemListView(),
              const SliverToBoxAdapter(
                child: DescrebtionRow(text2: "", text: "الاكثر مبيعا"),
              ),
              const BestSellerGridView(),
              SliverToBoxAdapter(
                child: Container(
                  height: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          Assets.imagesFruits,
                        )),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                  child: SizedBox(
                height: 16,
              )),
              const SliverToBoxAdapter(
                child: DescrebtionRow(
                  text: "تسوق حسب العروض",
                  text2: "",
                ),
              ),
              const DescountsItemGridView(),
              const SliverToBoxAdapter(
                child: DescrebtionRow(
                  text: "طازج وسريع",
                  text2: "",
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 4,
                ),
              ),
              const BestSellerGridView(),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 8,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          Assets.imagesFruits,
                        )),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: DescrebtionRow(
                  text: "انتهز الفرصة",
                  text2: "",
                ),
              ),
              const LastItemGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
