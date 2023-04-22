import 'package:flutter/material.dart';

class AppTutorialScreen extends StatelessWidget {

  static const String name = 'app-tutorial';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP Tutorial'),
      ),
    );
  }
}