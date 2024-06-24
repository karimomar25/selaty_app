import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';

class ModalSheetWidget extends StatelessWidget {
  const ModalSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.search,
                  size: 50,
                ),
                Text(
                  "المنتجات",
                  style: Styles.TextStyle18.copyWith(fontSize: 22),
                ),
                const Spacer(),
                const Icon(Icons.close)
              ],
            ),
            const Divider(
              color: Colors.black,
              height: 2,
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.orange[200]),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("فواكه"),
                          Icon(
                            Icons.close,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.orange[200]),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("فواكه"),
                          Icon(
                            Icons.close,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.orange[200]),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("فواكه"),
                          Icon(
                            Icons.close,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.orange[200]),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("فواكه"),
                          Icon(
                            Icons.close,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.orange[200]),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("فواكه"),
                          Icon(
                            Icons.close,
                            size: 20,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
