import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/home_page.dart';

// Provider types
// 1) Provider
// final nameProvider = Provider((ref) => 'prathmesh');

// 2) StateProvider
final nameProvider = StateProvider((ref) => 'Prathmesh');
void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData.dark(),
    );
  }
}
