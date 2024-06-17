import 'package:flutter/material.dart';
import 'package:selaty_app/features/Home/presentation/widgets/caterogy_item.dart';

class CaterogyItemListView extends StatelessWidget {
  const CaterogyItemListView({
    super.key,
    required this.height,
    required this.itemCount,
    required this.scrollDirection,
  });
  final double height;
  final int itemCount;
  final Axis scrollDirection;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SizedBox(
      // height: height / 7.5,
      height: height,
      child: ListView.builder(
        reverse: true,
        // scrollDirection: Axis.horizontal,
        scrollDirection: scrollDirection,

        // itemCount: 15,
        itemCount: itemCount,

        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 8),
            child: CaterogyItem(),
          );
        },
      ),
    ));
  }
}
