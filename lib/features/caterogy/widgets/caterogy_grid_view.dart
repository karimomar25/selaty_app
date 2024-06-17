import 'package:flutter/material.dart';
import 'package:selaty_app/features/caterogy/widgets/custom_caterogy_item.dart';

class CaterogyGridView extends StatelessWidget {
  const CaterogyGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height / 1.2,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1, crossAxisCount: 2),
          reverse: true,
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(left: 16, bottom: 10),
                child: Align(
                    alignment: Alignment.center, child: CustomCaterogyItem()),
              )),
    );
  }
}
