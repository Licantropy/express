import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/app_button.dart';
import 'package:express/common/widget/back_button_app_bar.dart';
import 'package:express/common/widget/error_scope.dart';
import 'package:express/common/widget/navigation_tab_bar/screen_without_navigation_tab_bar_mixin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({super.key});

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> with ScreenWithoutNavigationTabBarMixin {
  final TextEditingController _sumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackButtonAppBar(title: 'Пополнить кошелек'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Material(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(5),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(5),
                splashColor: AppColors.dustyBlue.withOpacity(0.3),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppIcons.kaspi, width: 24),
                      const SizedBox(width: 8),
                      const Text(
                        'Kaspi.kz',
                        style: TextStyles.medium15,
                      ),
                      const Spacer(),
                      Image.asset(
                        AppIcons.arrowDown,
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.lightGray,
              ),
              child: Image.asset(
                AppIcons.arrowDown,
                color: AppColors.pumpkin,
                height: 20,
              ),
            ),
            const SizedBox(height: 12),
            Material(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(5),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(5),
                splashColor: AppColors.dustyBlue.withOpacity(0.3),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.frameWallet,
                        width: 24,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Кошелек \$0',
                        style: TextStyles.medium15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 48),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: TextField(
                  maxLength: 7,
                  controller: _sumController,
                  keyboardType: TextInputType.number,
                  style: TextStyles.semiBold40,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    counterText: '',
                    fillColor: AppColors.lightGray,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  ),
                ),
              ),
            ),
            const Spacer(),
            AppButton(
              onPressed: () {
                context.pop();
                InfoScope.of(context).showSuccessSnackBar('Кошелек успешно пополнен!');
              },
              text: 'Пополнить',
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
