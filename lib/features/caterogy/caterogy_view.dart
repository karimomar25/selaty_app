import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:selaty_app/features/caterogy/widgets/landescape_caterogy_gridview.dart';
import 'package:selaty_app/features/home/presentation/custom_curved_navigation_bar.dart';
import 'package:selaty_app/features/auth/presentation/Login_Or_Signup/widgets/custom_auth_top_row.dart';
import 'package:selaty_app/features/caterogy/widgets/caterogy_grid_view.dart';
import 'package:short_navigation/short_navigation.dart';

class CaterogyView extends StatelessWidget {
  const CaterogyView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(milliseconds: 250),
          color: Colors.orange,
          buttonBackgroundColor: Colors.orange,
          backgroundColor: Colors.transparent,
          height: 40,
          items: const [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ],
        ),
        //
        // BottomNavigationBar(items: [
        //   BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        //   BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        // ]),
        backgroundColor: Colors.grey.shade300,
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ListView(
                  children: [
                    CustomTopRow(
                      color: Colors.black,
                      text: "التصنيفات",
                      onPressedBackArrow: () {
                        Go.backAndTo(const CustomCurvedNavigationBar());
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const SizedBox(
                      child: CaterogyGridView(),
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  children: [
                    CustomTopRow(
                      color: Colors.black,
                      text: "التصنيفات",
                      onPressedBackArrow: () {
                        Go.backAndTo(const CustomCurvedNavigationBar());
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      child: LandescapeCaterogyGridView(
                        landescapeImageHeight: height / 5,
                        crossAxisCount: 4,
                        // childAspectRatio: 1.8,
                        gridHeight: height / 1.5,
                      ),
                    ),
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
