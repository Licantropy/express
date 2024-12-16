import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A custom text field widget for general use.
///
/// This widget wraps a `TextField` providing additional customization and styling.
/// It is used for user input in non-form contexts.
class AuthTextField extends StatelessWidget {
  /// Controls the text being edited.
  ///
  /// If the [controller] is null, this widget will create its own [TextEditingController].
  final TextEditingController controller;

  /// Text that suggests what sort of input the field accepts.
  ///
  /// Displayed on top of the `TextField` when it is empty and unfocused.
  final String? hintText;

  /// An optional widget to display before the text input.
  ///
  /// This can be an icon or any other widget to appear at the beginning of the text field.
  final Widget? prefixIcon;

  /// An optional widget to display after the text input.
  ///
  /// This can be an icon or any other widget to appear at the end of the text field.
  final Widget? suffixIcon;

  /// The maximum number of characters (Unicode scalar values) to allow in the text field.
  ///
  /// If null, there is no limit to the number of characters.
  final int? maxLength;

  final List<TextInputFormatter>? inputFormatters;

  /// Creates an instance of [AuthTextField].
  const AuthTextField({
    required this.controller,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLength,
    this.inputFormatters,
    super.key,
  });

  @override
  Widget build(BuildContext context) => TextField(
        controller: controller,
        maxLength: maxLength,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color.fromRGBO(232, 232, 232, 1), width: 1.5),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      );
}
