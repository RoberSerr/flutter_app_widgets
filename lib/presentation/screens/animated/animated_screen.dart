import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {

  static const String name = 'animated';


  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double width = 50;
  double heigth = 50;
  double borderRadius = 10.0;
  Color color = Colors.blue;

  void changeShape() {

    final random = Random();
    final size = MediaQuery.of(context).size;

    width = random.nextInt(size.width.toInt() - 100) + 50;
    heigth = random.nextInt(size.height.toInt() - 150) + 50;
    borderRadius = random.nextInt(100) + 5;
    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      random.nextDouble() < 0.7 ? 0.6 : random.nextDouble()
    );

    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Animated Screen'),
        ),

      body: Center(
          child: AnimatedContainer(
            duration: const Duration( milliseconds: 300 ),
            curve: Curves.easeOutCubic,
            height: heigth <= 5 ? 6 : heigth,
            width: width <= 5 ? 6 : width,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(borderRadius <= 0 ? 1 : borderRadius))
            ),
          ),
        ),

      floatingActionButton: FloatingActionButton(
          onPressed: changeShape,
          child: const Icon(Icons.play_circle),
        ),
    );
  }
}