import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/back_button_app_bar.dart';
import 'package:express/common/widget/error_scope.dart';
import 'package:express/common/widget/navigation_tab_bar/screen_without_navigation_tab_bar_mixin.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> with ScreenWithoutNavigationTabBarMixin {
  Future<void> _launchUrl(BuildContext context, Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
      );
    } else {
      InfoScope.of(context).showErrorSnackBar("Произошла ошибка! Попробуйте еще раз.");
    }
  }

  final contactDetails = [
    {
      'title': 'Telegram',
      'icon': AppIcons.telegram,
      'url': Uri.parse('https://telegram.org'),
    },
    {
      'title': 'Instagram',
      'icon': AppIcons.instagram,
      'url': Uri.parse('https://instagram.com'),
    },
    {
      'title': '+7 (707) 777-77-77',
      'icon': AppIcons.phone,
      'url': Uri.parse('+7 (707) 777-77-77'),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackButtonAppBar(title: 'Контактные данные'),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.lightGray,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppIcons.pin,
                  width: 35,
                  height: 35,
                ),
                const SizedBox(width: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Главный офис',
                      style: TextStyles.medium15,
                    ),
                    Text(
                      'Казанская, 34 а, уг. Курдайская',
                      style: TextStyles.medium13,
                    ),
                    Text(
                      'Медеуский район  Алматинская область',
                      style: TextStyles.medium10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ...contactDetails.map((contact) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                onTap: () => _launchUrl(context, contact['url'] as Uri),
                leading: Image.asset(
                  contact['icon'] as String,
                  height: 35,
                ),
                title: Text(contact['title'] as String),
              ),
            );
          }),
        ],
      ),
    );
  }
}
