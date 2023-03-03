import 'package:flutter/cupertino.dart';
import 'package:weatherapp/screens/HomePage.dart';
import 'package:weatherapp/screens/detailPage.dart';
import 'package:weatherapp/screens/loading_screen.dart';


Map<String, Widget Function(BuildContext)> routes() {
  return {
    '/': (context) => LoadingScreen(),
    '/home': (context) => HomePage(),
    '/details': (context) => const DetailPage(),
  };
}