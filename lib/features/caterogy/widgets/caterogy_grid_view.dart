import 'package:flutter/material.dart';
import 'package:selaty_app/features/caterogy/widgets/custom_caterogy_item.dart';
import 'package:selaty_app/features/fruit_caterogy/fruit_caterogy_view.dart';
import 'package:short_navigation/short_navigation.dart';

class CaterogyGridView extends StatelessWidget {
  const CaterogyGridView({
    super.key,
    this.crossAxisCount,
    this.gridHeight,
    this.childAspectRatio,
    this.landescapeImageHeight,
  });
  final int? crossAxisCount;
  final double? gridHeight;
  final double? childAspectRatio;
  final double? landescapeImageHeight;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: gridHeight ?? height / 1.2,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: childAspectRatio ?? 1,
              crossAxisCount: crossAxisCount ?? 2),
          reverse: true,
          scrollDirection: Axis.vertical,
          itemCount: 12,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 10),
                child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {
                          Go.to(const FruitCaterogyView());
                        },
                        child: CustomCaterogyItem(
                          imageHeight: landescapeImageHeight,
                        ))),
              )),
    );
  }
}
