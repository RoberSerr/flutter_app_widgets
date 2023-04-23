import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/presentation/providers/counter_provider.dart';
import 'package:flutter_app_widgets/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CounterScreen extends ConsumerWidget {

  static const String name = 'counter';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider);

    final bool isDarkMode = ref.watch(themeNofifierProvider).isDarkmode;

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador para Riverpod'),
        actions: [
          IconButton(
            onPressed: () => ref.read( themeNofifierProvider.notifier )
                                  .toggleDarkmode(), 
            icon: isDarkMode  ? const Icon(Icons.dark_mode_outlined)
                              : const Icon(Icons.light_mode_outlined),
          )
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: TextStyle(
                  color: colors.primary,
                  fontSize: 80,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ref.read( counterProvider.notifier ).state == 1 
              ? const Text('Click')
              : const Text('Clicks')
          ],
        ),
      ),

      bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => ref.read( counterProvider.notifier ).state++,
                icon: Icon(Icons.plus_one_outlined,
                    size: 35, color: colors.secondary)),
            const SizedBox(width: 20),
            IconButton(
                onPressed: () => ref.read( counterProvider.notifier ).state = 0,
                icon: Icon(Icons.refresh_outlined,
                    size: 35, color: colors.secondary)),
            const SizedBox(width: 20),
            IconButton(
                onPressed: () => ref.read( counterProvider.notifier ).state--,
                icon: Icon(Icons.exposure_minus_1_outlined,
                    size: 35, color: colors.secondary))
          ],
        ),
    ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: Icon(Icons.arrow_back_ios_new_outlined, color: colors.primary),
      ),
    );
  }
}
