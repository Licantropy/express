import 'package:flutter/material.dart';

class AppNavigationTabBar extends StatefulWidget {
  final int selected;
  final Iterable<({String path, Tab tab})> tabs;
  final void Function(String path, int index) onTabSelected;

  const AppNavigationTabBar({
    super.key,
    required this.selected,
    required this.tabs,
    required this.onTabSelected,
  });

  @override
  State<AppNavigationTabBar> createState() => _AppNavigationTabBarState();
}

class _AppNavigationTabBarState extends State<AppNavigationTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      initialIndex: widget.selected,
      length: widget.tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, -3),
            spreadRadius: 0,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: ColoredBox(
          color: Colors.white,
          child: IconTheme.merge(
            data: IconThemeData(
              size: 24,
              // color: AppColors.of(context).primary,
            ),
            child: TabBar(
              indicator: const BoxDecoration(),
              // padding: EdgeInsets.all(AppSizes.of(context).defaultPaddingHalf),
              controller: _controller,
              dividerHeight: 0,
              // labelColor: AppColors.of(context).primary,
              // unselectedLabelColor: AppColors.of(context).neutral,
              onTap: (index) {
                widget.onTabSelected(
                  widget.tabs.elementAt(index).path,
                  index,
                );
              },
              tabs: widget.tabs.map((e) => e.tab).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
