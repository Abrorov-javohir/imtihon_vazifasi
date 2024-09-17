import 'package:flutter/material.dart';
import 'package:imtihon_vazifasi/views/screens/home_screen.dart';

void main() {
  // WidgetsBinding.instance;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
