import 'package:express/common/const/app_styles.dart';
import 'package:flutter/material.dart';

/// Default button
/// Elevated button, that commonly used
class AppButton extends StatelessWidget {
  /// Creates an ElevatedButton.If none of the values is used, Its expands to the all width, with vertical padding 10, and borderRadius 16.
  const AppButton({
    super.key,
    this.height,
    this.child,
    this.width,
    this.onPressed,
    this.borderRadius = 12,
    this.padding,
    this.margin,
    this.color,
    this.text,
    this.textColor,
    this.border = false,
    this.borderColor,
  });

  const AppButton.loading({
    super.key,
    this.height = 48,
    this.child = const CircularProgressIndicator.adaptive(
      backgroundColor: Colors.white,
    ),
    this.width = double.maxFinite,
    this.onPressed,
    this.borderRadius = 12,
    this.padding,
    this.margin,
    this.color,
    this.text,
    this.textColor,
    this.border = false,
    this.borderColor,
  });

  /// Child of the button, (can be icon, row and etc.)
  final Widget? child;

  /// Width
  final double? width;

  /// Height
  final double? height;

  /// Internal margin
  final EdgeInsetsGeometry? padding;

  /// Outer margin
  final EdgeInsetsGeometry? margin;

  /// Rounding
  final double borderRadius;

  /// Color
  final Color? color;

  /// Function of the button
  final void Function()? onPressed;

  /// Used when child is not needed.
  final String? text;

  /// Text color
  final Color? textColor;

  ///Borders of the button, false == noBorder;
  final bool? border;

  ///Color of the border
  final Color? borderColor;

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        width: width,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          border: border!
              ? Border.fromBorderSide(
                  BorderSide(width: 2, color: borderColor!),
                )
              : null,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
            backgroundColor: color ?? Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: text != null
              ? Center(
                  child: Text(
                    text!,
                    style: TextStyles.medium20.copyWith(color: textColor ?? AppColors.white),
                  ),
                )
              : child,
        ),
      );
}
