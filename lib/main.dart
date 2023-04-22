import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/config/theme/app_theme.dart';
import 'package:flutter_app_widgets/presentation/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 8 ).getTheme(),
      home: const HomeScreen(),
    );
  }
}