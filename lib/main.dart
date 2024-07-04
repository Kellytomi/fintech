import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'account_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/accounts': (context) => const AccountScreen(),
      },
    );
  }
}
