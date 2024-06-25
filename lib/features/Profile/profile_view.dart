import 'package:flutter/material.dart';
import 'package:selaty_app/utils/app_images.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: width / 1.2,
                              height: height / 7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.orange),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Spacer(
                                    flex: 8,
                                  ),
                                  Text(
                                    textAlign: TextAlign.center,
                                    "كريم الكامبيون",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    "okareem250@gmail.com",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                            Positioned(
                              left: width / 3.8,
                              bottom: height / 14,
                              child: CircleAvatar(
                                backgroundColor: Colors.white24,
                                maxRadius: width / 7,
                              ),
                            ),
                            Positioned(
                              left: width / 3.4,
                              bottom: height / 12,
                              child: CircleAvatar(
                                backgroundImage:
                                    const AssetImage(Assets.imagesMe),
                                maxRadius: width / 9,
                                backgroundColor: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                        height: height / 2.7,
                        child: GridView.builder(
                          clipBehavior: Clip.none,
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          itemCount: 9,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return const AboutMeItem();
                          },
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SupportAndExitItem(
                          color: Colors.orange,
                          text: "مركز الدعم",
                        ),
                        SupportAndExitItem(
                          color: Colors.green,
                          text: "خروج",
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListView(
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SupportAndExitItem(
                                      itemWidth: width / 7,
                                      itemHeight: height / 4.3,
                                      color: Colors.orange,
                                      text: "مركز الدعم",
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    SupportAndExitItem(
                                      itemWidth: width / 7,
                                      itemHeight: height / 4.3,
                                      color: Colors.green,
                                      text: "خروج",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 80,
                                ),
                                Container(
                                  width: width / 4,
                                  height: height / 2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.orange),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            const AssetImage(Assets.imagesMe),
                                        maxRadius: width / 16,
                                        backgroundColor: Colors.amber,
                                      ),
                                      // Spacer(
                                      //   flex: 8,
                                      // ),
                                      const Text(
                                        textAlign: TextAlign.center,
                                        "كريم الكامبيون",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 17),
                                      ),
                                      const Text(
                                        "okareem250@gmail.com",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                        height: height / 2.7,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          clipBehavior: Clip.none,
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          itemCount: 5,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 1),
                          itemBuilder: (context, index) {
                            return const AboutMeItem();
                          },
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    // const Column(
                    //   children: [
                    //     SupportAndExitItem(
                    //       itemHeight: 120,
                    //       color: Colors.orange,
                    //       text: "مركز الدعم",
                    //     ),
                    //     const SizedBox(
                    //       height: 16,
                    //     ),
                    //     SupportAndExitItem(
                    //       itemHeight: 120,
                    //       color: Colors.green,
                    //       text: "خروج",
                    //     ),
                    //   ],
                    // ),
                    const Spacer(),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class AboutMeItem extends StatelessWidget {
  const AboutMeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: const Column(
        children: [
          Spacer(),
          Icon(
            Icons.person,
            color: Colors.red,
            size: 35,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "عنـي",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class SupportAndExitItem extends StatelessWidget {
  const SupportAndExitItem(
      {super.key,
      required this.color,
      required this.text,
      this.itemWidth,
      this.itemHeight});
  final Color color;
  final String text;
  final double? itemWidth;
  final double? itemHeight;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: itemWidth ?? width / 3,
      height: itemHeight ?? height / 6.5,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          const Spacer(),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18), color: Colors.white24),
            child: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
