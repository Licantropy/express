import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/app_button.dart';
import 'package:express/common/widget/back_button_app_bar.dart';
import 'package:express/common/widget/navigation_tab_bar/screen_without_navigation_tab_bar_mixin.dart';
import 'package:express/feature/profile/widgets/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> with ScreenWithoutNavigationTabBarMixin {
  String _selectedLanguage = 'ru';

  void _selectLanguage(String language) {
    setState(() {
      _selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackButtonAppBar(
        title: 'Язык',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.lightGray,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  ListItem.top(
                    suffixIcon: _selectedLanguage == 'ru' ? AppIcons.radioFilled : AppIcons.radio,
                    icon: AppIcons.ru,
                    title: 'Русский',
                    onTap: () => _selectLanguage('ru'),
                  ),
                  ListItem.end(
                    suffixIcon: _selectedLanguage == 'kz' ? AppIcons.radioFilled : AppIcons.radio,
                    icon: AppIcons.kz,
                    title: 'Казахский',
                    onTap: () => _selectLanguage('kz'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: IntrinsicHeight(
        child: AppButton(
          margin: const EdgeInsets.all(24),
          text: 'Сохранить',
          onPressed: () => context.pop(),
        ),
      ),
    );
  }
}
