import 'package:c_clark_workshop/features/onboarding/screens/onboard_screen.dart';
import 'package:c_clark_workshop/features/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../features/main/screens/main_screen.dart';
import 'app_routes.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initial:
        return _buildRoute(settings, const SplashScreen());
      case AppRoutes.onboarding:
        return _buildRoute(settings, const OnboardScreen());
      case AppRoutes.main:
        return _buildRoute(settings, const MainScreen());
      default:
        return _buildRoute(settings, const _RouteNotFoundScreen());
    }
  }

  static MaterialPageRoute<dynamic> _buildRoute(
    RouteSettings settings,
    Widget page,
  ) {
    return MaterialPageRoute<dynamic>(settings: settings, builder: (_) => page);
  }
}

class _RouteNotFoundScreen extends StatelessWidget {
  const _RouteNotFoundScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Not Found')),
      body: const Center(child: Text(AppStrings.somethingWentWrong)),
    );
  }
}
