import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:selaty_app/features/home/presentation/home_view.dart';
import 'package:selaty_app/features/Profile/profile_view.dart';

class CustomCurvedNavigationBar extends StatefulWidget {
  const CustomCurvedNavigationBar({super.key});

  @override
  State<CustomCurvedNavigationBar> createState() =>
      _CustomCurvedNavigationBarState();
}

class _CustomCurvedNavigationBarState extends State<CustomCurvedNavigationBar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  final screens = [
    const HomeView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.person,
        size: 30,
      ),
      const Icon(
        Icons.search,
        size: 30,
      ),
      const Icon(
        Icons.favorite,
        size: 30,
      ),
    ];
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
          child: CurvedNavigationBar(
              index: index,
              onTap: (index) {
                setState(() {
                  this.index = index;
                });
              },
              key: navigationKey,
              animationDuration: const Duration(milliseconds: 250),
              color: Colors.orange,
              buttonBackgroundColor: Colors.orange,
              backgroundColor: Colors.transparent,
              height: 55,
              items: items),
        ),
        backgroundColor: Colors.grey.shade300,
        body: screens[index],
      ),
    );
  }
}
