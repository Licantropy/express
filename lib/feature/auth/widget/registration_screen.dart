import 'package:express/common/const/app_styles.dart';
import 'package:express/common/utils/validator.dart';
import 'package:express/common/widget/app_button.dart';
import 'package:express/common/widget/error_scope.dart';
import 'package:express/feature/auth/data/params/registration_params.dart';
import 'package:express/feature/auth/widget/app_password_form_field.dart';
import 'package:express/feature/auth/widget/auth_scope.dart';
import 'package:flutter/material.dart';

class PasswordCreationScreen extends StatefulWidget {
  final String phone;
  final String code;

  const PasswordCreationScreen({super.key, required this.phone, required this.code});

  @override
  State<PasswordCreationScreen> createState() => _PasswordCreationScreenState();
}

class _PasswordCreationScreenState extends State<PasswordCreationScreen> {
  late final TextEditingController passwordController;
  late final TextEditingController repeatPasswordController;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    repeatPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
  }

  void _validateAndSubmit() {
    final validator = PasswordValidator();
    final passwordError = validator(passwordController.text);

    if (passwordError != null) {
      InfoScope.of(context).showErrorSnackBar(passwordError);
      return;
    }

    if (passwordController.text != repeatPasswordController.text) {
      InfoScope.of(context).showErrorSnackBar('Пароли не совпадают!');
      return;
    }

    AuthScope.controllerOf(context).register(
      RegistrationParams(
        phone: widget.phone,
        password: passwordController.text,
        passwordConfirmation: repeatPasswordController.text,
        name: "THERE IS NO NAME IN DESIGN",
        preferLanguage: "ru",
        code: widget.code,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 6),
            const Text('Создайте пароль', style: TextStyles.semiBold18),
            const SizedBox(height: 16),
            const Text('Выберите безопасный пароль для защиты ваших данных.',
                style: TextStyles.medium13),
            const SizedBox(height: 16),
            AppPasswordFormField(
              controller: passwordController,
              hintText: 'Введите пароль',
            ),
            const SizedBox(height: 16),
            AppPasswordFormField(
              controller: repeatPasswordController,
              hintText: 'Повторите пароль',
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
            TextButton(onPressed: () {}, child: const Text('Забыли пароль?'))
          ],
        ),
      ),
    );
  }
}
