import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/back_button_app_bar.dart';
import 'package:express/common/widget/navigation_tab_bar/screen_without_navigation_tab_bar_mixin.dart';
import 'package:express/feature/app/widget/router/material_context.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopUpHistoryScreen extends StatefulWidget {
  const TopUpHistoryScreen({super.key});

  @override
  State<TopUpHistoryScreen> createState() => _TopUpHistoryScreenState();
}

class _TopUpHistoryScreenState extends State<TopUpHistoryScreen>
    with ScreenWithoutNavigationTabBarMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackButtonAppBar(
        title: 'История',
        onPressed: () {
          context.pop();
        },
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Column(
            children: [
              Material(
                color: AppColors.lightGray,
                borderRadius: BorderRadius.circular(5),
                child: InkWell(
                  onTap: () => GoRouter.of(context).push(RoutePaths.filter),
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
                          AppIcons.calendar,
                          width: 24,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          '03.11.2024 - 03.12.2024',
                          style: TextStyles.medium15.copyWith(color: AppColors.pumpkin),
                        ),
                        const Spacer(),
                        Image.asset(
                          AppIcons.arrowRight,
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.lightGray,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('03.12.2024', style: TextStyles.medium13),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Image.asset(
                              AppIcons.moneyPhone,
                              width: 40,
                              height: 40,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Пополнение баланса', style: TextStyles.medium15),
                                      Text('2500 \$', style: TextStyles.medium15),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Text('14:11',
                                      style:
                                          TextStyles.medium13.copyWith(color: AppColors.dustyBlue)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
