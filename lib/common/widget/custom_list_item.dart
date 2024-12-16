import 'package:express/common/const/app_styles.dart';
import 'package:flutter/material.dart';

enum ButtonPosition { top, middle, end }

class ListItem extends StatelessWidget {
  final String? icon;
  final double? iconSize;
  final Color? textColor;
  final String title;
  final VoidCallback onTap;
  final ButtonPosition position;
  final String? suffixIcon;

  const ListItem.top({
    super.key,
    this.icon,
    this.textColor,
    required this.title,
    required this.onTap,
    this.suffixIcon,
    this.iconSize,
  }) : position = ButtonPosition.top;

  const ListItem.middle({
    super.key,
    this.icon,
    this.textColor,
    required this.title,
    required this.onTap,
    this.suffixIcon,
    this.iconSize,
  }) : position = ButtonPosition.middle;

  const ListItem.end({
    super.key,
    this.icon,
    this.textColor,
    required this.title,
    required this.onTap,
    this.suffixIcon,
    this.iconSize,
  }) : position = ButtonPosition.end;

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius;
    switch (position) {
      case ButtonPosition.top:
        borderRadius = const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        );
        break;
      case ButtonPosition.end:
        borderRadius = const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        );
        break;
      case ButtonPosition.middle:
      default:
        borderRadius = BorderRadius.zero;
        break;
    }

    return Material(
      color: AppColors.lightGray,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            children: [
              if (icon != null) ...[
                Image.asset(
                  icon!,
                  height: iconSize ?? 24,
                  width: iconSize ?? 24,
                ),
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Text(
                  title,
                  style: TextStyles.medium15.copyWith(color: textColor ?? Colors.black),
                ),
              ),
              Image.asset(
                suffixIcon ?? AppIcons.arrowRight,
                height: 24,
                width: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
