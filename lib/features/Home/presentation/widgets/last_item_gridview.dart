import 'package:flutter/material.dart';
import 'package:selaty_app/features/home/presentation/widgets/last_item.dart';

class LastItemGridView extends StatelessWidget {
  const LastItemGridView({
    super.key,
    this.listHeight,
  });
  final double? listHeight;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: listHeight ?? height / 3.5,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.4, crossAxisCount: 1),
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: LastItem(),
                )),
      ),
    );
  }
}
