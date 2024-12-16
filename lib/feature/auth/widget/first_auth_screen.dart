import 'package:express/common/const/app_styles.dart';
import 'package:express/common/utils/input_masks.dart';
import 'package:express/common/widget/app_button.dart';
import 'package:express/feature/auth/widget/auth_scope.dart';
import 'package:express/feature/auth/widget/auth_text_field.dart';
import 'package:flutter/material.dart';

class FirstAuthScreen extends StatefulWidget {
  const FirstAuthScreen({super.key});

  @override
  State<FirstAuthScreen> createState() => _FirstAuthScreenState();
}

class _FirstAuthScreenState extends State<FirstAuthScreen> {
  late final TextEditingController numberController;
  bool _isButtonEnabled = false;
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    numberController = TextEditingController();
    numberController.addListener(_validateForm);
  }

  @override
  void dispose() {
    super.dispose();
    numberController.removeListener(_validateForm);
    numberController.dispose();
  }

  void _validateForm() {
    final phoneNumber = numberController.text.replaceAll(RegExp(r'\D'), '');
    final isPhoneNumberValid = phoneNumber.length >= 11;

    setState(() => _isButtonEnabled = isPhoneNumberValid && _isChecked);
  }

  void _onCheckboxChanged(bool? value) => setState(() {
        _isChecked = value ?? false;
        _validateForm();
      });

  void _onSubmit() {
    final phoneNumber = numberController.text;
    AuthScope.controllerOf(context).firstAuth(phoneNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Добро пожаловать! Мы рады видеть вас среди наших клиентов.',
              textAlign: TextAlign.center,
              style: TextStyles.semiBold18,
            ),
            const SizedBox(height: 16),
            Text(
              'Введите свой номер телефона',
              style: TextStyles.medium13.copyWith(
                color: AppColors.dustyBlue,
              ),
            ),
            const SizedBox(height: 16),
            AuthTextField(
              controller: numberController,
              inputFormatters: [
                CustomMaskTextInputFormatter.phoneFormatter(),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  visualDensity: VisualDensity.compact,
                  value: _isChecked,
                  onChanged: _onCheckboxChanged,
                ),
                const SizedBox(width: 12),
                Text(
                  'Согласны ли вы, с Соглашением\nи Публичным договором 717 express',
                  style: TextStyles.medium13.copyWith(
                    color: AppColors.dustyBlue,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            AuthScope.stateOf(context).maybeWhen(
              loading: () => AppButton.loading(
                onPressed: () {},
              ),
              orElse: () => AppButton(
                height: 48,
                text: 'Продолжить',
                onPressed: _isButtonEnabled ? _onSubmit : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
