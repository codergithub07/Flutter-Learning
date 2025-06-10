import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedColorPalette extends StatefulWidget {
  const AnimatedColorPalette({super.key});

  @override
  State<AnimatedColorPalette> createState() => _AnimatedColorPaletteState();
}

class _AnimatedColorPaletteState extends State<AnimatedColorPalette> {
  List<Color> currentPalette = generatedRandomPalette();

  static List<Color> generatedRandomPalette() {
    final random = Random();
    return List.generate(
      5,
      (_) => Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      ),
    );
  }

  void regeneratePalete() {
    setState(() {
      currentPalette = generatedRandomPalette();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Palette Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (Color color in currentPalette)
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInToLinear,
                width: 100,
                height: 100,
                color: color,
                margin: EdgeInsets.all(8),
              ),
            ElevatedButton(
              onPressed: regeneratePalete,
              child: const Text('Generate New Palette'),
            ),
          ],
        ),
      ),
    );
  }
}
