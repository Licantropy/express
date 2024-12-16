import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/custom_list_item.dart';
import 'package:express/feature/app/widget/router/material_context.dart';
import 'package:express/feature/auth/widget/auth_state_scope.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль', style: TextStyles.semiBold20),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'JP834204309',
            style: TextStyles.medium18,
          ),
          const SizedBox(height: 8),
          const Text(
            '+7 777 777 77 77',
            style: TextStyles.medium15,
          ),
          const SizedBox(height: 12),

          // Section 1
          Container(
            decoration: BoxDecoration(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                ListItem.top(
                  icon: AppIcons.id,
                  title: 'Личные данные',
                  onTap: () => context.push(RoutePaths.personalData),
                ),
                ListItem.end(
                  icon: AppIcons.building,
                  title: 'Ваш филиал',
                  onTap: () => context.push(RoutePaths.branch),
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),

          // Section 2
          Container(
            decoration: BoxDecoration(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                ListItem.top(
                  icon: AppIcons.phone,
                  title: 'Контактные данные',
                  onTap: () => context.push(RoutePaths.contact),
                ),
                ListItem.end(
                  icon: AppIcons.language,
                  title: 'Язык',
                  onTap: () => context.push(RoutePaths.language),
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),

          // Section 3
          Container(
            decoration: BoxDecoration(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                ListItem.top(
                  icon: AppIcons.logOut,
                  title: 'Выйти',
                  onTap: () {
                    AuthStateScope.controllerOf(context).logout();
                    context.pushReplacement(RoutePaths.firstAuth);
                  },
                ),
                ListItem.end(
                  textColor: AppColors.dustyBlue,
                  title: 'Удалить аккаунт',
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          Align(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Политика конфидициальности',
                style: TextStyles.medium13.copyWith(color: AppColors.dustyBlue),
              ),
            ),
          ),
          Align(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Договор оферты ',
                style: TextStyles.medium13.copyWith(color: AppColors.dustyBlue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

