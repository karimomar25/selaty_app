import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/styles.dart';
import 'package:selaty_app/features/fruit_caterogy/widgets/fruit_view_top_row.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderingView extends StatelessWidget {
  const OrderingView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const FruitViewTopRow(
                  text: "ترتيب المسار",
                  color: Colors.black,
                  textColor: Colors.black),
              const SizedBox(
                height: 16,
              ),
              const OrderItem(),
              const SizedBox(
                height: 18,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.symmetric(horizontal: 22),
                height: height / 1.8,
                child: ListView(
                  children: [
// start timeline
                    TimeLineWidget(
                        isFirst: true,
                        isLast: false,
                        isPast: true,
                        eventItem: Column(
                          children: [
                            Text(
                              "تم الطلب",
                              style: Styles.TextStyle18.copyWith(
                                  color: Colors.white),
                            ),
                            const Text(
                              "نوفمبر 2023",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
// middle timeline
                    TimeLineWidget(
                        isFirst: false,
                        isLast: false,
                        isPast: true,
                        eventItem: Column(
                          children: [
                            Text(
                              "Order",
                              style: Styles.TextStyle18.copyWith(
                                  color: Colors.white),
                            ),
                            const Text(
                              "نوفمبر 2023",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                    const TimeLineWidget(
                        isFirst: false, isLast: false, isPast: false),
                    const TimeLineWidget(
                        isFirst: false, isLast: false, isPast: false),

// end time line
                    const TimeLineWidget(
                        isFirst: false, isLast: true, isPast: false),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          color: const Color(0xff29C17B),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 55,
            child: Icon(
              Icons.coffee_outlined,
              size: 60,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "0D2204# : معرف الطلب",
                style: Styles.TextStyle18.copyWith(color: Colors.white),
              ),
              const Text(
                "تاريخ النشر 26 كانون الثاني (يناير) 2021",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "الاجمالي 100 ريال",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'البنود : 15',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class TimeLineWidget extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  // ignore: prefer_typing_uninitialized_variables
  final eventItem;

  const TimeLineWidget(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      this.eventItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        indicatorStyle: IndicatorStyle(
            iconStyle: IconStyle(
              iconData: Icons.done,
              color: isPast ? Colors.white : Colors.green.shade100,
            ),
            width: 70,
            color: isPast ? Colors.green : Colors.green.shade100),
        beforeLineStyle:
            LineStyle(color: isPast ? Colors.green : Colors.green.shade100),
        endChild: EventItem(
          isPast: isPast,
          child: eventItem,
        ),
      ),
    );
  }
}

class EventItem extends StatelessWidget {
  const EventItem({super.key, this.child, required this.isPast});
  final bool isPast;
  // ignore: prefer_typing_uninitialized_variables
  final child;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isPast ? Colors.green[400] : Colors.green[100]),
        child: child
        //
        // Column(
        //   children: [
        //     Text(
        //       "تم الطلب",
        //       style: Styles.TextStyle18.copyWith(color: Colors.green),
        //     ),
        //     Text("نوفمبر 2023")
        //   ],
        );
  }
}
// class TrackOrderItem extends StatelessWidget {
//   const TrackOrderItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(32),
//       height: 500,
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white, borderRadius: BorderRadius.circular(8)),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               Text(
//                 "تم الطلب",
//                 style: Styles.TextStyle18.copyWith(color: Colors.green),
//               ),
//               Text(
//                 "2023 نوفمبر",
//                 style: Styles.TextStyle16.copyWith(color: Colors.grey),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               Text(
//                 "Order",
//                 style: Styles.TextStyle18.copyWith(color: Colors.green),
//               ),
//               Text(
//                 "2023 نوفمبر",
//                 style: Styles.TextStyle16.copyWith(color: Colors.grey),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               Text("تم شحن الطللب",
//                   style: Styles.TextStyle18.copyWith(color: Colors.green)),
//               Text(
//                 "2023 نوفمبر",
//                 style: Styles.TextStyle16.copyWith(color: Colors.grey),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               const Text(
//                 "خارج الخدمة",
//                 style: Styles.TextStyle18,
//               ),
//               Text(
//                 "قيد الانتظار",
//                 style: Styles.TextStyle16.copyWith(color: Colors.grey),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               const Text(
//                 "أجل تسليم",
//                 style: Styles.TextStyle18,
//               ),
//               Text(
//                 "قيد الانتظار",
//                 style: Styles.TextStyle16.copyWith(color: Colors.grey),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               CircleAvatar(
//                 maxRadius: 28,
//                 backgroundColor: Colors.green,
//                 // backgroundColor: Colors.grey[400],
//                 child: Icon(
//                   Icons.apps_outlined,
//                   color: Colors.green[100],
//                   size: 35,
//                 ),
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               CircleAvatar(
//                 maxRadius: 28,
//                 backgroundColor: Colors.green,

//                 // backgroundColor: Colors.grey[400],
//                 child: Icon(
//                   Icons.menu,
//                   color: Colors.green[100],
//                   size: 35,
//                 ),
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               CircleAvatar(
//                 maxRadius: 28, backgroundColor: Colors.green,

//                 // backgroundColor: Colors.grey[400],
//                 child: Icon(
//                   Icons.menu,
//                   color: Colors.green[100],
//                   size: 35,
//                 ),
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               CircleAvatar(
//                 maxRadius: 28,
//                 backgroundColor: Colors.grey[400],
//                 child: const Icon(
//                   Icons.menu,
//                   size: 35,
//                 ),
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               CircleAvatar(
//                 maxRadius: 28,
//                 backgroundColor: Colors.grey[400],
//                 child: const Icon(
//                   Icons.task_alt_rounded,
//                   size: 35,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
