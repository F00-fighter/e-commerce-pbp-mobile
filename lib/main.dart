import 'package:flutter/material.dart';
import 'package:e_commerce_mobile_app/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey, // Base color for neutral elements
        ).copyWith(
          primary: const Color(0xFF1b2838), // Dark background color
          secondary: const Color(0xFF171a21), // Accent color similar to Steam's blue
          surface: const Color.fromARGB(255, 44, 49, 53), // Card or surface color
        ),
        scaffoldBackgroundColor: const Color(0xFF1b2838), // Page background color
      ),
      home: MyHomePage(),
    );
  }
}

