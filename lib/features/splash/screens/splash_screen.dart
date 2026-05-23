import 'package:c_clark_workshop/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_assets.dart';
import '../../../routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Future<void> navigateNext() async {
  //   await Future.delayed(Duration(seconds: 3), () {
  //     Navigator.of(context).pushReplacementNamed(AppRoutes.onboarding);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.appIconForeground),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.onboarding);
              },
              child: const Text('Go to Onboarding'),
            ),
          ],
        ),
      ),
    );
  }
}
