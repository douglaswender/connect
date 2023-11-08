import 'package:connect/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:connect/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connect',
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.green600),
        useMaterial3: true,
        fontFamily: 'Lexend',
      ),
    );
  }
}
