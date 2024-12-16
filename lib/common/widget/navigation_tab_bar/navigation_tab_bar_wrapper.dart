import 'package:express/common/const/app_styles.dart';
import 'package:express/common/utils/extension/context_extension.dart';
import 'package:express/feature/app/widget/router/material_context.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract interface class AppNavigationTabBarController {
  void hide();

  void show();
}

class AppNavigationTabBarScope extends StatefulWidget {
  final Widget child;

  const AppNavigationTabBarScope({super.key, required this.child});

  static AppNavigationTabBarController of(BuildContext context) {
    return context.inhOf<_InheritedAppNavigationTabBarScope>(listen: false).controller;
  }

  static int currentTabOf(BuildContext context) =>
      context.inhOf<_InheritedAppNavigationTabBarScope>().currentTab;

  @override
  State<AppNavigationTabBarScope> createState() => _AppNavigationTabBarScopeState();
}

class _AppNavigationTabBarScopeState extends State<AppNavigationTabBarScope>
    implements AppNavigationTabBarController {
  int _selected = 0;
  bool _showNavigationTabBar = true;
  bool _removed = false;

  static const List<String> _paths = [
    RoutePaths.home,
    RoutePaths.orders,
    RoutePaths.profile,
  ];

  @override
  void hide() {
    setState(() {
      _showNavigationTabBar = false;
    });
  }

  @override
  void show() {
    setState(() {
      _removed = false;
      _showNavigationTabBar = true;
    });
  }

  void _onTabSelected(int index) {
    context.go(_paths[index]);
    setState(() {
      _selected = index;
    });
  }

  static List<({String title, String icon})> _bottomNavBarItems(BuildContext context) => [
        (title: "Главная", icon: AppIcons.home),
        (title: "Заказы", icon: AppIcons.orders),
        (title: "Профиль", icon: AppIcons.profile),
      ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          extendBody: true,
          bottomNavigationBar: AnimatedOpacity(
            opacity: _showNavigationTabBar ? 1 : 0,
            duration: const Duration(milliseconds: 100),
            onEnd: () {
              if (!_showNavigationTabBar) {
                setState(() {
                  _removed = true;
                });
              }
            },
            child: _removed
                ? null
                : Theme(
                    data: Theme.of(context).copyWith(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: ColoredBox(
                      color: Colors.white,
                      child: BottomNavigationBar(
                        elevation: 0,
                        currentIndex: _selected,
                        unselectedItemColor: AppColors.grey,
                        selectedItemColor: AppColors.pumpkin,
                        type: BottomNavigationBarType.fixed,
                        selectedLabelStyle: TextStyles.medium10,
                        unselectedLabelStyle: TextStyles.medium10,
                        onTap: _onTabSelected,
                        items: _bottomNavBarItems(context)
                            .asMap()
                            .entries
                            .map(
                              (entry) => BottomNavigationBarItem(
                                label: entry.value.title,
                                icon: Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Image.asset(
                                    entry.value.icon,
                                    width: 26,
                                    height: 26,
                                    color:
                                        _selected == entry.key ? AppColors.pumpkin : AppColors.grey,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
          ),
          body: _InheritedAppNavigationTabBarScope(
            controller: this,
            currentTab: _selected,
            child: widget.child,
          ),
        ),
      ],
    );
  }
}

class _InheritedAppNavigationTabBarScope extends InheritedWidget {
  final AppNavigationTabBarController controller;
  final int currentTab;

  const _InheritedAppNavigationTabBarScope({
    required super.child,
    required this.controller,
    required this.currentTab,
  });

  @override
  bool updateShouldNotify(_InheritedAppNavigationTabBarScope oldWidget) =>
      oldWidget.currentTab != currentTab;
}
