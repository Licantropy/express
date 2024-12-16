import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/app_button.dart';
import 'package:express/feature/app/widget/router/material_context.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    AppIcons.banner,
    AppIcons.banner2,
    AppIcons.banner3,
  ];

  int _currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _weightController.addListener(_updateTotalPrice);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _weightController.removeListener(_updateTotalPrice);
    _weightController.dispose();
    super.dispose();
  }

  final TextEditingController _weightController = TextEditingController();
  double? _totalPrice;

  void _updateTotalPrice() {
    final weightText = _weightController.text;
    if (weightText.isEmpty ||
        double.tryParse(weightText) == null ||
        double.parse(weightText) == 0) {
      setState(() {
        _totalPrice = null;
      });
    } else {
      setState(() {
        _totalPrice = double.parse(weightText) * 3.7;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: ListView(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      PageView.builder(
                        itemCount: images.length,
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                          );
                        },
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(images.length, (index) {
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.symmetric(horizontal: 4.0),
                              width: 8.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                color:
                                    _currentPage == index ? AppColors.pumpkin : AppColors.dustyBlue,
                                shape: BoxShape.circle,
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: AppColors.lightGray,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            AppIcons.currentBranch,
                            height: 100,
                            width: 90,
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Ваш текущий филиал',
                                style: TextStyles.medium13,
                              ),
                              Text(
                                'JP834',
                                style: TextStyles.medium18.copyWith(color: AppColors.pumpkin),
                              ),
                              const Text(
                                'Казанская, 34 а, уг. Курдайская',
                                style: TextStyles.medium13,
                              ),
                              Text(
                                'Медеуский район  •  Алматинская область',
                                style: TextStyles.medium10.copyWith(color: AppColors.dustyBlue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset(
                          AppIcons.calculator,
                          width: 25,
                          height: 25,
                        ),
                        const Text(
                          'Калькулятор',
                          style: TextStyles.semiBold15,
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Material(
                      color: AppColors.lightGray,
                      borderRadius: BorderRadius.circular(5),
                      child: InkWell(
                        onTap: () => context.push(RoutePaths.branch),
                        borderRadius: BorderRadius.circular(5),
                        splashColor: AppColors.dustyBlue.withOpacity(0.3),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Выберите филиал',
                                style: TextStyles.medium15,
                              ),
                              Image.asset(
                                AppIcons.arrowRight,
                                width: 24,
                                height: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Укажите вес заказа (кг)',
                      style: TextStyles.medium15.copyWith(color: AppColors.dustyBlue),
                    ),
                    const SizedBox(height: 4),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: TextField(
                        controller: _weightController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          fillColor: AppColors.lightGray,
                          filled: true,
                          suffixIcon: Icon(
                            Icons.edit,
                            color: AppColors.dustyBlue,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        ),
                      ),
                    ),
                    AnimatedSize(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (_totalPrice != null)
                            Column(
                              children: [
                                const SizedBox(height: 16),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGray,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text('1 кг = '),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 6),
                                          decoration: BoxDecoration(
                                            color: AppColors.pumpkin,
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                          child: Text(
                                            '\$ 3.7',
                                            style: TextStyles.medium15
                                                .copyWith(color: AppColors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Цена доставки',
                                  style: TextStyles.medium13.copyWith(
                                    color: AppColors.dustyBlue,
                                  ),
                                ),
                                Text(
                                  '\$${_totalPrice!.toStringAsFixed(2)}',
                                  style: TextStyles.medium13,
                                ),
                              ],
                            ),
                          const SizedBox(height: 16),
                          _buildAddressDetails(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildAddressDetails() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: AppColors.pumpkin),
    ),
    child: Column(
      children: [
        _buildRow(AppIcons.building, 'Адрес доставки Cainiao Network',
            mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 16),
        _buildRow(AppIcons.profile, 'JP2585207', trailingIcon: AppIcons.copy),
        const SizedBox(height: 10),
        _buildRow(AppIcons.phone, '18158354927'),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppIcons.pin, height: 24, width: 24),
            const SizedBox(width: 8),
            const Expanded(
              child: Text(
                'Pinyin: Zhōngguó Guǎngdōng shěng Guǎngzhōu shì Tiānhuì lù 12 hào 102 shì '
                '(中国广东省广州市天汇路12号102室)',
                style: TextStyles.medium13,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AppButton(
          onPressed: () {},
          borderRadius: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Скопировать всё', style: TextStyles.medium15.copyWith(color: AppColors.white)),
              const SizedBox(width: 12),
              Image.asset(AppIcons.copy, height: 16),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildRow(
  String icon,
  String text, {
  String? trailingIcon,
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
}) {
  return Row(
    mainAxisAlignment: mainAxisAlignment,
    children: [
      Image.asset(icon, height: 24, width: 24),
      const SizedBox(width: 8),
      Text(text, style: TextStyles.medium13),
      if (trailingIcon != null) ...[
        const SizedBox(width: 8),
        Image.asset(trailingIcon, height: 16, color: AppColors.pumpkin),
      ],
    ],
  );
}
