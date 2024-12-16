import 'package:express/common/widget/navigation_tab_bar/navigation_tab_bar_wrapper.dart';
import 'package:flutter/widgets.dart';

mixin ScreenWithoutNavigationTabBarMixin<T extends StatefulWidget> on State<T> {
  late final AppNavigationTabBarController controller;

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller = AppNavigationTabBarScope.of(context)..hide();
    });
  }

  @override
  @mustCallSuper
  void dispose() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.show();
    });
    super.dispose();
  }
}
