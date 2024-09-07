import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/home_page.dart';
import 'package:riverpod_learning/user.dart';
import 'package:http/http.dart' as http;

// Provider types
// 1) Provider
// final nameProvider = Provider((ref) => 'prathmesh');

// 2) StateProvider
// final nameProvider = StateProvider<String?>((ref) => null);

// 3) StateNotifier & StateNotifierProvider
// final userProvider = StateNotifierProvider<UserNotifier, User>(
//  (ref) => UserNotifier(
//     User(name: '', age: 0),
//   ),
// );

// 4) FutureProvider
final fetchUserProvider = FutureProvider(
  (ref) {
    const url = 'https://jsonplaceholder.typicode.com/users/1';
    return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
  },
);
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
