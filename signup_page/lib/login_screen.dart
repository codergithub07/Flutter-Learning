import 'package:flutter/material.dart';
import 'package:signup_page/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('/home/tony/Desktop/Programming/Flutter/Flutter-Learning/signup_page/assets/images/signin_balls.png'),
              const Text(
                'Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50,),
              const SocialButton(iconPath: '/home/tony/Desktop/Programming/Flutter/Flutter-Learning/signup_page/assets/svgs/g_logo.svg', label: 'Sign in with Google')
            ],
          ),
        ),
      ),
    );
  }
}
