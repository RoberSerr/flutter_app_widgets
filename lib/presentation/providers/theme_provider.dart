import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_app_widgets/config/theme/app_theme.dart';

// Listado de Colores
final colorListProvider = Provider((ref) => colorList);

// Handler de Light/Dark mode
// final isDarkModeProvider = StateProvider((ref) => false);

// Color seleccionado
// final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme
final themeNofifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);


class ThemeNotifier extends StateNotifier<AppTheme> {
  
  // STATE = Estado = new AppTheme();
  ThemeNotifier(): super( AppTheme() );

  void toggleDarkmode() {
    state = state.copyWith( isDarkmode: !state.isDarkmode );
  }

  void changeColorIndex( int colorIndex ) {
    state = state.copyWith( selectedColor: colorIndex );
  }

}