import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/app_button.dart';
import 'package:express/common/widget/back_button_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String _selectedPeriod = 'За неделю';

  final List<String> _options = ['За неделю', 'За месяц', 'За полгода'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackButtonAppBar(title: 'Фильтр'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Radio Button List
          Expanded(
            child: ListView.builder(
              itemCount: _options.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: _selectedPeriod == _options[index]
                      ? Image.asset(
                          AppIcons.radioFilled,
                          width: 24,
                        )
                      : Image.asset(
                          AppIcons.radio,
                          width: 24,
                        ),
                  title: Text(
                    _options[index],
                    style: TextStyles.medium15.copyWith(
                      fontWeight:
                          _selectedPeriod == _options[index] ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedPeriod = _options[index];
                    });
                  },
                );
              },
            ),
          ),
          // Apply Button
          Padding(
            padding: const EdgeInsets.all(16),
            child: AppButton(
              text: 'Применить',
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
