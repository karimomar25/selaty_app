import 'dart:async';

import 'package:flutter/material.dart';
import 'package:selaty_app/core/utils/app_images.dart';

class FruitsImageListView extends StatefulWidget {
  const FruitsImageListView({
    super.key,
  });

  @override
  State<FruitsImageListView> createState() => _FruitsImageListViewState();
}

class _FruitsImageListViewState extends State<FruitsImageListView> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (_scrollController.hasClients) {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.position.pixels;
        double delta = 2; // Change this value to control the speed of scrolling

        if (currentScroll < maxScroll) {
          _scrollController.animateTo(
            currentScroll + delta,
            duration: const Duration(milliseconds: 100),
            curve: Curves.linear,
          );
        } else {
          _scrollController.jumpTo(0);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    double ListViewheight = MediaQuery.of(context).size.height;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: ListViewheight / 7.5,
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          Assets.imagesFruitsCover,
                        )),
                    borderRadius: BorderRadius.circular(8)),
              ),
            );
          },
        ),
      ),
    );
  }
}
