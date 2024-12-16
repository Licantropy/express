import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/back_button_app_bar.dart';
import 'package:express/common/widget/navigation_tab_bar/screen_without_navigation_tab_bar_mixin.dart';
import 'package:flutter/material.dart';

class BranchScreen extends StatefulWidget {
  const BranchScreen({super.key});

  @override
  State<BranchScreen> createState() => _BranchScreenState();
}

class _BranchScreenState extends State<BranchScreen> with ScreenWithoutNavigationTabBarMixin {
  int selected = 0;
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackButtonAppBar(title: 'Ваш филиал'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentTabIndex = 0;
                  });
                },
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.profile,
                      width: 24,
                      height: 24,
                      color: _currentTabIndex == 0 ? AppColors.pumpkin : AppColors.dustyBlue,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Мой',
                      style: TextStyles.medium15.copyWith(
                        color: _currentTabIndex == 0 ? AppColors.pumpkin : AppColors.dustyBlue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              const ColoredBox(
                color: AppColors.dustyBlue,
                child: SizedBox(width: 1, height: 12),
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentTabIndex = 1;
                  });
                },
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.building,
                      width: 24,
                      height: 24,
                      color: _currentTabIndex == 1 ? AppColors.pumpkin : AppColors.dustyBlue,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Все филиалы',
                      style: TextStyles.medium15.copyWith(
                        color: _currentTabIndex == 1 ? AppColors.pumpkin : AppColors.dustyBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Conditionally show content based on current tab:
          if (_currentTabIndex == 0) _buildMyTab(),
          if (_currentTabIndex == 1) _buildAllBranches(),
        ],
      ),
    );
  }

  Widget _buildAllBranches() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => setState(() {
            selected = index;
          }),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.asset(
                  selected == index ? AppIcons.radioFilled : AppIcons.radio,
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Тимирязева, 69',
                        style: TextStyles.medium15,
                      ),
                      Text(
                        'Город Алматы Атакент',
                        style: TextStyles.medium10.copyWith(color: AppColors.dustyBlue),
                      ),
                      Text(
                        'Открыто  2.0 km',
                        style: TextStyles.medium10.copyWith(color: AppColors.dustyBlue),
                      ),
                    ],
                  ),
                ),
                Text(
                  'JP834',
                  style: TextStyles.medium18.copyWith(color: AppColors.pumpkin),
                ),
                const SizedBox(width: 5),
                Image.asset(
                  AppIcons.arrowRight,
                  width: 18,
                  height: 18,
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: 4,
    );
  }

  Widget _buildMyTab() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Казанская, 34 а  JP834',
          style: TextStyles.medium18,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: _buildInfoTile(AppIcons.smartphone, '8777 777 77 77\n')),
            const SizedBox(width: 8),
            Expanded(
              child: _buildInfoTile(
                AppIcons.clock,
                '10:00 - 20:00\nБез выходных',
                isHighlighted: true,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          decoration: BoxDecoration(
            color: AppColors.lightGray,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppIcons.grayPin, width: 16, height: 16),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Казанская, 34 а, уг. Курдайская',
                      style: TextStyles.medium13,
                    ),
                    const Text(
                      'Медеeский район • Алматинская область',
                      style: TextStyles.medium10,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Image.asset(
                AppIcons.copy,
                height: 15,
                width: 15,
                color: AppColors.dustyBlue,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          decoration: BoxDecoration(
            color: AppColors.lightGray,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppIcons.truck, height: 16, width: 16),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Из Китая до филиала',
                    style: TextStyles.medium13,
                  ),
                  const Text('Standart 3,79\$ / 1 кг', style: TextStyles.medium10),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          decoration: BoxDecoration(
            color: AppColors.lightGray,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildMapOption('2 gis', AppIcons.doubleGis),
              const ColoredBox(
                color: AppColors.dustyBlue,
                child: SizedBox(width: 1, height: 12),
              ),
              _buildMapOption('Google Maps', AppIcons.googleMaps),
              const ColoredBox(
                color: AppColors.dustyBlue,
                child: SizedBox(width: 1, height: 12),
              ),
              _buildMapOption('Yandex', AppIcons.yandexMaps),
            ],
          ),
        ),
        const SizedBox(height: 200),
      ],
    );
  }

  Widget _buildMapOption(String title, String icon) {
    return Row(
      children: [
        Image.asset(icon, height: 25, width: 25),
        const SizedBox(width: 4),
        Text(title, style: TextStyles.medium13),
      ],
    );
  }

  Widget _buildInfoTile(String icon, String label, {bool isHighlighted = false}) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.lightGray,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 16,
            width: 16,
          ),
          const SizedBox(width: 8),
          Text(label, style: TextStyles.medium13),
        ],
      ),
    );
  }
}
