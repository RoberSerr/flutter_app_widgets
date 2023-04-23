

import 'package:flutter_app_widgets/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Handler de Light/Dark mode
final isDarkModeProvider = StateProvider((ref) => false);

// Listado de Colores
final colorListProvider = Provider((ref) => colorList);

// Color seleccionado
final selectedColorProvider = StateProvider((ref) => 0);