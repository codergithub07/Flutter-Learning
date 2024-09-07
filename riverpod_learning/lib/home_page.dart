import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/main.dart';

// 1. Provider:

// 1) 1st way to read provider in StatelessWidget:
// class HomePage extends ConsumerWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final name = ref.watch(nameProvider);
//     return Scaffold(
//       body: Center(
//         child: Text(name),
//       ),
//     );
//   }
// }

// 1) 2nd way to read provider:
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Consumer(builder: (context, ref, child) {
//         final name = ref.watch(nameProvider);
//         return Center(
//           child: Text(name),
//         );
//       }),
//     );
//   }
// }

// Method to read Provider in StatefulWidget:
// class HomePage extends ConsumerStatefulWidget {
//   const HomePage({super.key});

//   @override
//   ConsumerState<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends ConsumerState<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final name = ref.watch(nameProvider);
//     return Scaffold(
//       body: Center(
//         child: Text(name),
//       ),
//     );
//   }
// }

// 2. StateProvider:

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchUserProvider).when(
      data: (data) {
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: Column(
                children: [
                  Text(data.name),
                  Text(data.email),
                ],
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
            body: Center(
          child: Text(
            error.toString(),
          ),
        ));
      },
      loading: () {
        return const CircularProgressIndicator();
      },
    );
  }
}
