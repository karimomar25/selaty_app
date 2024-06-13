import 'package:flutter/material.dart';
import 'package:selaty_app/features/Home/presentation/widgets/best_value_item.dart';

class CaterogyItemListView extends StatelessWidget {
  const CaterogyItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SizedBox(
      width: 90,
      height: 100,
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
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
