import 'package:flutter/material.dart';

class LoginAnimation extends StatefulWidget {
  const LoginAnimation({super.key});

  @override
  State<LoginAnimation> createState() => _LoginAnimationState();
}

class _LoginAnimationState extends State<LoginAnimation> with SingleTickerProviderStateMixin {
  late Animation<double> logoFadeAnimation;
  late AnimationController controller;
  late Animation<Offset> slideAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1500));

    logoFadeAnimation = Tween<double>(begin: 0, end: 1).animate(controller);

    slideAnimation = Tween(begin: Offset(-1, -1), end: Offset.zero).animate(
      CurvedAnimation(parent: controller, curve: Curves.ease),
    );

    // scaleAnimation = Tween<double>(begin: 0, end: 1).animate(controller);
    scaleAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: controller, curve: Curves.ease),
    );

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: logoFadeAnimation,
              child: FlutterLogo(
                size: 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SlideTransition(
                position: slideAnimation,
                child: ScaleTransition(
                  scale: scaleAnimation,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Username'),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Password'),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Submit"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
