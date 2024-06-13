import 'package:flutter/material.dart';
import 'package:selaty_app/features/Home/presentation/widgets/last_item.dart';

class LastItemGridView extends StatelessWidget {
  const LastItemGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 350,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
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
