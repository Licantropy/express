import 'dart:ui';

import 'package:flutter/material.dart';

@immutable
final class AppSizes extends ThemeExtension<AppSizes> {
  final double defaultPadding;

  const AppSizes({
    required this.defaultPadding,
  });

  double get defaultPaddingHalf => defaultPadding / 2;

  @override
  AppSizes copyWith({double? defaultPadding}) {
    return AppSizes(
      defaultPadding: defaultPadding ?? this.defaultPadding,
    );
  }

  @override
  AppSizes lerp(AppSizes? other, double t) {
    if (other is! AppSizes) {
      return this;
    }
    return AppSizes(
      defaultPadding: lerpDouble(defaultPadding, other.defaultPadding, t)!,
    );
  }

  static AppSizes of(BuildContext context) {
    return Theme.of(context).extension<AppSizes>()!;
  }
}
