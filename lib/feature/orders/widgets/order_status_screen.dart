import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/app_button.dart';
import 'package:express/common/widget/back_button_app_bar.dart';
import 'package:express/common/widget/navigation_tab_bar/screen_without_navigation_tab_bar_mixin.dart';
import 'package:flutter/material.dart';

class OrderStatusScreen extends StatefulWidget {
  const OrderStatusScreen({super.key});

  @override
  State<OrderStatusScreen> createState() => _OrderStatusScreenState();
}

class _OrderStatusScreenState extends State<OrderStatusScreen>
    with ScreenWithoutNavigationTabBarMixin {
  // The currently selected tab
  int _selectedIndex = 0;

  final List<String> _tabs = ["Готово к получению", "В пути", "Получен"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackButtonAppBar(title: 'Заказ'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: List.generate(_tabs.length, (index) {
          //     final isSelected = _selectedIndex == index;
          //     return Expanded(
          //       child: GestureDetector(
          //         onTap: () {
          //           setState(() {
          //             _selectedIndex = index; // Update the selected index
          //           });
          //         },
          //         child: Container(
          //           padding: const EdgeInsets.symmetric(vertical: 12),
          //           decoration: BoxDecoration(
          //             color: isSelected ? Colors.orange : Colors.grey.shade200,
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //           child: Center(
          //             child: Text(
          //               _tabs[index],
          //               style: TextStyle(
          //                 color: isSelected ? Colors.white : Colors.black,
          //                 fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     );
          //   }),

          // )
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(_tabs.length, (index) {
              final isSelected = _selectedIndex == index;
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: index > 0 ? 8.0 : 0.0),
                  // Add padding only after the first element
                  child: AppButton(
                    borderRadius: 50,
                    color: isSelected ? AppColors.pumpkin : AppColors.lightGray,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Text(
                      _tabs[index],
                      style: TextStyles.medium10
                          .copyWith(color: isSelected ? AppColors.white : AppColors.black),
                    ),
                  ),
                ),
              );
            }),
          ),
          DeliveryCard(
            date: "27.11.2024",
            location: "Казанская, 34 а, уг. Курдайская",
            itemName: "Кольцо Змея",
            trackingNumber: "№ JP657454388",
            status: "Готов к выдаче",
            imageUrl: "https://picsum.photos/100",
            onTrack: () {},
          ),
          DeliveryCard(
            date: "22.11.2024",
            location: "Казанская, 34 а, уг. Курдайская",
            itemName: "Книга 'Перекрёсток воронов'",
            trackingNumber: "№ JP12354333",
            status: "Готов к выдаче",
            imageUrl: "https://picsum.photos/102",
            onTrack: () {},
          ),
        ],
      ),
    );
  }
}

class DeliveryCard extends StatelessWidget {
  final String date;
  final String location;
  final String itemName;
  final String trackingNumber;
  final String status;
  final String imageUrl;
  final VoidCallback onTrack;

  const DeliveryCard({
    Key? key,
    required this.date,
    required this.location,
    required this.itemName,
    required this.trackingNumber,
    required this.status,
    required this.imageUrl,
    required this.onTrack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.access_time, size: 17, color: AppColors.dustyBlue),
              const SizedBox(width: 8),
              Text(
                date,
                style: TextStyles.medium13.copyWith(color: AppColors.dustyBlue),
              ),
              const Spacer(),
              Image.asset(
                AppIcons.copy,
                width: 20,
                height: 20,
                color: AppColors.dustyBlue,
              ),
              const SizedBox(width: 8),
              Text(
                trackingNumber,
                style: TextStyles.medium13,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            "Пункт выдачи: $location",
            style: TextStyles.medium15,
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(itemName, style: TextStyles.medium13),
                    const SizedBox(height: 4),
                    Image.asset(
                      AppIcons.ali,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(status, style: TextStyles.medium13.copyWith(color: AppColors.pumpkin)),
          const SizedBox(height: 16),
          AppButton(
            onPressed: onTrack,
            text: 'Отследить',
            borderRadius: 30,
          )
        ],
      ),
    );
  }
}
