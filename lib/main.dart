import 'package:get/get.dart';
// import 'package:klekt/models/cart.dart';
import 'package:klekt/pages/intro_page.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyAppWithGetX());
}

class MyAppWithGetX extends StatelessWidget {
  const MyAppWithGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => Cart(),
//       builder: (context, child) => const GetMaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: IntroPage(),
//       ),
//     );
//   }
// }
