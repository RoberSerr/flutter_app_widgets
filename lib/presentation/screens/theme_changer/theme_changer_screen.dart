import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const String name = 'theme-changer';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final bool isDarkmode = ref.watch( themeNofifierProvider ).isDarkmode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            onPressed: () => ref.read( themeNofifierProvider.notifier )
                                  .toggleDarkmode(), 
            icon: Icon( isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined )
          )
        ],
        
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch( colorListProvider );

    final int selectedColor = ref.watch( themeNofifierProvider ).selectedColor;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: ListView.builder(

        itemCount: colors.length,
        itemBuilder: (context, index) {
          
          final color = colors[index];

          return RadioListTile(
            title: Text( 'Este color', style: TextStyle(color: color) ),
            subtitle: Text( '${ color.value }', style: TextStyle(color: color) ),
            activeColor: color,
            value: index, 
            groupValue: selectedColor, 
            onChanged: (value) => ref.read(themeNofifierProvider.notifier).changeColorIndex(index),
          );
    
        },
      ),
    );
  }
}