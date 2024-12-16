import 'package:flutter/material.dart';

@immutable
final class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  final Color primary;
  final Color secondary;
  final Color white;
  final Color black;
  final Color neutral;
  final Color background;
  final Color orange;
  final Color yellow;
  final Color tertiary;
  final Color tertiary300;
  final Color blackShadow;
  final Color errorDefault;
  final Color primary50;

  const AppColorsTheme({
    required this.primary,
    required this.secondary,
    required this.background,
    required this.white,
    required this.black,
    required this.neutral,
    required this.orange,
    required this.yellow,
    required this.tertiary,
    required this.blackShadow,
    required this.errorDefault,
    required this.primary50,
    required this.tertiary300,
  });

  @override
  AppColorsTheme copyWith({
    Color? primary,
    Color? secondary,
    Color? white,
    Color? black,
    Color? neutral,
    Color? background,
    Color? orange,
    Color? yellow,
    Color? tertiary,
    Color? blackShadow,
    Color? errorDefault,
    Color? primary50,
    Color? qiblaCircle,
    Color? shadow,
    Color? blue,
    Color? lightBlue,
    Color? error25,
    Color? darkShadow,
    Color? red,
    Color? primary300,
    Color? tertiary300,
  }) {
    return AppColorsTheme(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      white: white ?? this.white,
      black: black ?? this.black,
      neutral: neutral ?? this.neutral,
      background: background ?? this.background,
      orange: orange ?? this.orange,
      yellow: yellow ?? this.yellow,
      tertiary: tertiary ?? this.tertiary,
      blackShadow: blackShadow ?? this.blackShadow,
      errorDefault: errorDefault ?? this.errorDefault,
      primary50: primary50 ?? this.primary50,
      tertiary300: tertiary300 ?? this.tertiary300,
    );
  }

  @override
  AppColorsTheme lerp(AppColorsTheme? other, double t) {
    if (other is! AppColorsTheme) {
      return this;
    }
    return AppColorsTheme(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      neutral: Color.lerp(neutral, other.neutral, t)!,
      background: Color.lerp(background, other.background, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      blackShadow: Color.lerp(blackShadow, other.blackShadow, t)!,
      errorDefault: Color.lerp(errorDefault, other.errorDefault, t)!,
      primary50: Color.lerp(primary50, other.primary50, t)!,
      tertiary300: Color.lerp(tertiary300, other.tertiary300, t)!,
    );
  }

  static AppColorsTheme of(BuildContext context) {
    return Theme.of(context).extension<AppColorsTheme>()!;
  }
}
