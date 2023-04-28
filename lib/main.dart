import 'package:designs/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:designs/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_screnn': (_) => ScrollDesignScreen(),
        'home_screen': (_) => const HomeScreen(),
      },
    );
  }
}
