import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const String name = 'progress';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text('Circular progress indicator'),
          const SizedBox(height: 15),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: colors.surfaceVariant,
          ),
          const SizedBox(height: 30),
          const Text('Progress Indicator  Circular y Linear controlado'),
          const SizedBox(height: 15),
          const _ControlledProgressIndicator()
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return StreamBuilder(

      stream: Stream.periodic( 
          const Duration( milliseconds: 300 ),
          (value) => (value * 2) /100
        ).takeWhile((value) => value < 100),
      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: colors.surfaceVariant,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: LinearProgressIndicator(
                  value: progressValue,
                )
              )
            ],
          ),
        );
      }
    );
  }
}