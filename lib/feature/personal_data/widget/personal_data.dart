import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/app_button.dart';
import 'package:express/common/widget/back_button_app_bar.dart';
import 'package:express/common/widget/error_scope.dart';
import 'package:express/common/widget/navigation_tab_bar/screen_without_navigation_tab_bar_mixin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> with ScreenWithoutNavigationTabBarMixin {
  final TextEditingController fullNameController = TextEditingController(text: 'Марат Абдрахимулы');
  final TextEditingController cityController = TextEditingController(text: 'Алматы');
  final TextEditingController addressController = TextEditingController(text: 'Аль-Фараби 112/4');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackButtonAppBar(title: 'Личные данные'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _CustomTextField(
              title: 'Полное имя',
              controller: fullNameController,
            ),
            const SizedBox(height: 16),
            _CustomTextField(
              title: 'Город/Район',
              controller: cityController,
            ),
            const SizedBox(height: 16),
            _CustomTextField(
              title: 'Адрес',
              controller: addressController,
            ),
            const Spacer(),
            AppButton(
              text: 'Изменить данные',
              onPressed: () {
                context.pop();
                InfoScope.of(context).showSuccessSnackBar('Данные успешно изменены!');
              },
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const _CustomTextField({
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.medium13.copyWith(color: AppColors.dustyBlue),
        ),
        const SizedBox(height: 4),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          ),
        ),
      ],
    );
  }
}
