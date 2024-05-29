import 'package:flutter/material.dart';

import '../home_reels/home_page.dart';
import 'homeFeed/feed_screen.dart';
import 'widgets/bottom_bar_widget.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({super.key});

  @override
  State<AppNavigationScreen> createState() => _AppNavigationScreenState();
}

class _AppNavigationScreenState extends State<AppNavigationScreen> {
  int currentIndex = 0;
  List<Widget> homeWidgets = [
    const HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeWidgets.elementAt(currentIndex),
      bottomNavigationBar: BottomBarWidget(
        currentIndex: currentIndex,
        onUpdate: (int index) {
          currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
