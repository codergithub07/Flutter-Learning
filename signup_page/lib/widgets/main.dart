import 'package:flutter/material.dart';
import 'package:signup_page/widgets/login_screen.dart';
import 'package:signup_page/widgets/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      home: const LoginScreen(),
    );
  }
}