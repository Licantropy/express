import 'package:express/common/const/app_styles.dart';
import 'package:express/common/utils/validator.dart';
import 'package:express/common/widget/app_button.dart';
import 'package:express/common/widget/error_scope.dart';
import 'package:express/feature/auth/data/params/login_params.dart';
import 'package:express/feature/auth/widget/app_password_form_field.dart';
import 'package:express/feature/auth/widget/auth_scope.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  final String phone;

  const PasswordScreen({super.key, required this.phone});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

  void _validateAndSubmit() {
    final validator = PasswordValidator();
    final error = validator(passwordController.text);
    final phone = widget.phone.replaceAll(RegExp(r'\D'), '');
    if (error == null) {
      AuthScope.controllerOf(context).login(
        LoginParams(
          phone: phone,
          password: passwordController.text,
        ),
      );
    } else {
      print(error);
      InfoScope.of(context).showErrorSnackBar(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            const Text('Введите пароль', style: TextStyles.semiBold18),
            const SizedBox(height: 16),
            AppPasswordFormField(
              controller: passwordController,
            ),
            const SizedBox(height: 16),
            AuthScope.stateOf(context).maybeWhen(
              loading: () => AppButton.loading(
                onPressed: () {},
              ),
              orElse: () => AppButton(
                height: 48,
                text: 'Продолжить',
                onPressed: _validateAndSubmit,
              ),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () {},
              child: const Text('Забыли пароль?', style: TextStyles.medium15),
            )
          ],
        ),
      ),
    );
  }
}
