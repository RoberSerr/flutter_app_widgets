import 'package:flutter/material.dart';

import 'package:flutter_app_widgets/config/theme/app_theme.dart';
import 'package:flutter_app_widgets/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/router/app_router.dart';

void main() => runApp(
  const ProviderScope(
    child: MyApp()
  )
);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {

    // final bool isDarkmode = ref.watch( isDarkModeProvider );
    // final int selectedColor = ref.watch( selectedColorProvider );

    final AppTheme appTheme = ref.watch( themeNofifierProvider );

    return MaterialApp.router(
      title: 'Futter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
      
    );
  }
}