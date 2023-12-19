import 'package:flutter/material.dart';
import 'package:shoplex/pages/CartPage.dart';
import 'package:shoplex/pages/Homepage.dart';
import 'package:shoplex/pages/ItemPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // color de background general de la app
        scaffoldBackgroundColor: const Color.fromARGB(255, 52, 1, 61),
      ),
      routes: {
        "/": (context) => const HomePage(),
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
