import 'package:express/common/const/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackButtonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final void Function()? onPressed;

  const BackButtonAppBar({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onPressed ?? () => context.pop(),
        icon: Image.asset(
          AppIcons.arrowLeft,
          width: 28,
          height: 28,
        ),
      ),
      title: Text(
        title,
        style: TextStyles.semiBold20,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
