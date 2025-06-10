import 'package:flutter/material.dart';

class AnimatedTween extends StatelessWidget {
  const AnimatedTween({super.key});
  final double size = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pulsating Circle Animation'),
        centerTitle: true,
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: 200.0),
          duration: const Duration(milliseconds: 1500),
          builder: (context, size, widget) {
            return Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withValues(alpha: 0.5),
                    blurRadius: size,
                    spreadRadius: size / 3,
                  )
                ],
              ),
              child: widget,
            );
          },
          child: const Text('Hello, World!'),
        ),
      ),
    );
  }
}
