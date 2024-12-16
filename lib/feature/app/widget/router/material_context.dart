import 'package:express/common/const/app_styles.dart';
import 'package:express/common/widget/error_scope.dart';
import 'package:express/common/widget/navigation_tab_bar/navigation_tab_bar_wrapper.dart';
import 'package:express/feature/auth/widget/auth_scope.dart';
import 'package:express/feature/auth/widget/first_auth_screen.dart';
import 'package:express/feature/auth/widget/otp_screen.dart';
import 'package:express/feature/auth/widget/password_screen.dart';
import 'package:express/feature/auth/widget/registration_screen.dart';
import 'package:express/feature/branch/widget/branch_screen.dart';
import 'package:express/feature/contact_details/widget/contact_details.dart';
import 'package:express/feature/home/widget/home_screen.dart';
import 'package:express/feature/language/widget/language_screen.dart';
import 'package:express/feature/orders/widgets/order_status_screen.dart';
import 'package:express/feature/orders/widgets/orders_screen.dart';
import 'package:express/feature/personal_data/widget/personal_data.dart';
import 'package:express/feature/profile/widgets/profile_screen.dart';
import 'package:express/feature/splash/widget/splash_screen.dart';
import 'package:express/feature/top_up/widget/filter_screen.dart';
import 'package:express/feature/top_up/widget/top_up_history_screen.dart';
import 'package:express/feature/top_up/widget/top_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'route_paths.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      name: RoutePaths.initial,
      path: '/',
      redirect: (_, __) => '/splash',
    ),
    GoRoute(
      path: '/splash',
      name: 'splash',
      builder: (context, state) => const SplashScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) => InfoScope(child: AuthScope(child: child)),
      routes: [
        GoRoute(
          path: RoutePaths.firstAuth,
          builder: (context, state) => const FirstAuthScreen(),
        ),
        GoRoute(
          path: RoutePaths.password,
          builder: (context, state) {
            final phone = state.extra as String;
            return PasswordScreen(phone: phone);
          },
        ),
        GoRoute(
          path: RoutePaths.otp,
          builder: (context, state) {
            final phoneNumber = state.extra as String;
            return OtpScreen(phoneNumber: phoneNumber);
          },
        ),
        GoRoute(
          path: RoutePaths.passwordCreation,
          builder: (context, state) {
            final extra = state.extra as Map<String, String>;
            final phone = extra['phone']!;
            final code = extra['code']!;
            return PasswordCreationScreen(phone: phone, code: code);
          },
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, child) => AppNavigationTabBarScope(
        child: InfoScope(child: child),
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            ShellRoute(
              builder: (context, state, child) => child,
              routes: [
                GoRoute(
                  name: 'home',
                  path: RoutePaths.home,
                  builder: (context, state) => const HomeScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            ShellRoute(
              builder: (context, state, child) => child,
              routes: [
                GoRoute(
                  path: RoutePaths.orders,
                  name: 'orders',
                  builder: (context, state) => const OrdersScreen(),
                ),
                GoRoute(
                  path: RoutePaths.topUp,
                  name: 'topUp',
                  builder: (context, state) => const TopUpScreen(),
                ),
                GoRoute(
                  path: RoutePaths.topUpHistory,
                  name: 'topUpHistory',
                  builder: (context, state) => const TopUpHistoryScreen(),
                ),
                GoRoute(
                  path: RoutePaths.filter,
                  name: 'filter',
                  builder: (context, state) => const FilterScreen(),
                ),
                GoRoute(
                  path: RoutePaths.orderStatus,
                  name: 'orderStatus',
                  builder: (context, state) => const OrderStatusScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            ShellRoute(
              builder: (context, state, child) => child,
              routes: [
                GoRoute(
                  name: 'profile',
                  path: RoutePaths.profile,
                  builder: (context, state) => const ProfileScreen(),
                ),
                GoRoute(
                  name: 'language',
                  path: RoutePaths.language,
                  builder: (context, state) => const LanguageScreen(),
                ),
                GoRoute(
                  name: 'personal',
                  path: RoutePaths.personalData,
                  builder: (context, state) => const PersonalData(),
                ),
                GoRoute(
                  name: 'branch',
                  path: RoutePaths.branch,
                  builder: (context, state) => const BranchScreen(),
                ),
                GoRoute(
                  name: 'contact',
                  path: RoutePaths.contact,
                  builder: (context, state) => const ContactDetails(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

class MaterialContext extends StatelessWidget {
  const MaterialContext({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        canvasColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          scrolledUnderElevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: false,
          fillColor: Colors.white,
          hoverColor: Colors.transparent,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.pumpkin, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.grey, width: 1),
          ),
        ),
        primaryColor: const Color(0xFFFF5722),
        checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Color(0xFFFF5722), width: 2),
          checkColor: WidgetStateProperty.all(Colors.white),
          fillColor: WidgetStateProperty.resolveWith(
            (states) =>
                states.contains(WidgetState.selected) ? const Color(0xFFFF5722) : Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFFFF5722),
            disabledForegroundColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      routerConfig: appRouter, // Pass the extracted router instance
    );
  }
}
