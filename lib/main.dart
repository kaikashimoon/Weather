// import 'package:flutter/material.dart';
// import 'package:weatherapp/route.dart';
//
// import '/theme/theme.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'clima App',
//       theme: theme(),
//       initialRoute: '/',
//       routes: routes(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:weatherapp/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}