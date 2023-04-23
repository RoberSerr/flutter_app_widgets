import 'package:flutter/material.dart';

import 'package:flutter_app_widgets/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/router/app_router.dart';

void main() => runApp(
  const ProviderScope(
    child: MyApp()
  )
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Futter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 4 ).getTheme(),
      
    );
  }
}