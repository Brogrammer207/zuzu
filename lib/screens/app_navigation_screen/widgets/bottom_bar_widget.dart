import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuzu/screens/widgets/apptheme.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key, required this.currentIndex, required this.onUpdate});
  final int currentIndex;
  final Function(int index) onUpdate;

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int _initialIndex = 0;

  updateIndex(int i) {
    _initialIndex = i;
    setState(() {});
    widget.onUpdate(_initialIndex);
  }

  @override
  void initState() {
    super.initState();
    _initialIndex = widget.currentIndex ?? 0;
  }

  @override
  void didUpdateWidget(covariant BottomBarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentIndex != oldWidget.currentIndex && widget.currentIndex != _initialIndex) {
      _initialIndex = widget.currentIndex;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ).copyWith(
        bottom: context.mediaQueryPadding.bottom
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                  // flex: 6,
                  child: menuButton('Home', CupertinoIcons.house_fill, 0)),
              Expanded(
                  // flex: 6,
                  child: menuButton('Discover', CupertinoIcons.compass, 1)),
              Expanded(
                // flex: 6,
                child: Center(
                  child: IconButton.filledTonal(
                      onPressed: () {},
                      style: IconButton.styleFrom(backgroundColor: AppTheme.primaryColor),
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ),
              Expanded(
                  // flex: 6,
                  child: menuButton('Inbox', CupertinoIcons.chat_bubble_text, 2)),
              Expanded(
                  // flex: 6,
                  child: menuButton('Profile', CupertinoIcons.person_fill, 3))
            ],
          ),
        ],
      ),
    );
  }

  Widget menuButton(String text, IconData icon, int index) {
    bool selected = _initialIndex == index;
    return GestureDetector(
      onTap: () {
        updateIndex(index);
      },
      behavior: HitTestBehavior.translucent,
      child: AnimatedSwitcher(
        duration: 500.milliseconds,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          key: ValueKey(selected),
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: selected ? AppTheme.primaryColor : Colors.grey,
              size: selected ? 24 : 22,
            ),
            Text(
              text,
              style: TextStyle(
                  color: selected ? AppTheme.primaryColor : Colors.grey,
                  fontSize: selected ? 14 : 13,
                  fontWeight: selected ? FontWeight.w600 : FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
