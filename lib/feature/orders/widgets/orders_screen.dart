import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/app_button.dart';
import 'package:express/feature/app/widget/router/material_context.dart';
import 'package:express/feature/profile/widgets/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заказы', style: TextStyles.semiBold20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFFD54F),
                    Color(0xFFFF7022),
                  ],
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    AppIcons.wallet,
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Кошелек',
                        style: TextStyles.medium15.copyWith(color: AppColors.white),
                      ),
                      Text(
                        '100.0 \$',
                        style: TextStyles.medium15.copyWith(color: AppColors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                  AppButton(
                    onPressed: () => context.push(RoutePaths.topUp),
                    color: AppColors.white,
                    textColor: AppColors.black,
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    text: 'Пополнить',
                  ),
                  const SizedBox(width: 10),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true, // Allows content to occupy more space
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(15),
                          ),
                        ),
                        builder: (context) => const WalletModalContent(),
                      );
                    },
                    child: Image.asset(
                      AppIcons.arrowRight,
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            ListItem.top(
              icon: AppIcons.boxTimer,
              iconSize: 30,
              title: 'Готово к получению',
              onTap: () => GoRouter.of(context).push(RoutePaths.orderStatus),
            ),
            ListItem.middle(
              icon: AppIcons.road,
              iconSize: 30,
              title: 'В пути',
              onTap: () => GoRouter.of(context).push(RoutePaths.orderStatus),
            ),
            ListItem.end(
              icon: AppIcons.boxSuccess,
              iconSize: 30,
              title: 'Получен',
              onTap: () => GoRouter.of(context).push(RoutePaths.orderStatus),
            ),
          ],
        ),
      ),
    );
  }
}

class WalletModalContent extends StatelessWidget {
  const WalletModalContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Кошелек', style: TextStyles.semiBold20),
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFFD54F),
                        Color(0xFFFF7022),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppIcons.cash, width: 30),
                          const SizedBox(width: 8),
                          Text(
                            'Баланс',
                            style: TextStyles.medium18.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'JP834204309',
                        style: TextStyles.medium18.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Text(
                        '\$2500.0',
                        style: TextStyles.semiBold40.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: AppButton(
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                        onPressed: () => context.push(RoutePaths.topUp),
                        color: AppColors.coral,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppIcons.plus, width: 30, height: 30),
                            const Spacer(),
                            const Text('Пополнение', style: TextStyles.medium15),
                            const Spacer(),
                            const SizedBox(width: 15)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Flexible(
                      fit: FlexFit.tight,
                      child: AppButton(
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                        onPressed: () => GoRouter.of(context).push(RoutePaths.topUpHistory),
                        color: AppColors.coral,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppIcons.fileText, width: 30, height: 30),
                            const Spacer(),
                            const Text('История', style: TextStyles.medium15),
                            const Spacer(),
                            const SizedBox(width: 15)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Action Buttons
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
