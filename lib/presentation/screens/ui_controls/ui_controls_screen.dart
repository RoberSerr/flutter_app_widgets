import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const String name = 'ui-controls';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
    );
  }
}