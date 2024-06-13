import 'package:flutter/material.dart';
import 'package:selaty_app/features/Home/presentation/widgets/caterogy_item.dart';

class CaterogyItemListView extends StatelessWidget {
  const CaterogyItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SliverToBoxAdapter(
        child: SizedBox(
      height: height / 7.5,
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
