import 'package:c_clark_workshop/core/theme/app_theme.dart';
import 'package:c_clark_workshop/routes/app_router.dart';
import 'package:c_clark_workshop/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'core/constants/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: AppTheme.light,
      initialRoute: AppRoutes.main,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
