import 'package:flutter/material.dart';
import 'package:imtihon_vazifasi/views/widget/bottomappbar.dart';
import 'package:imtihon_vazifasi/views/widget/harajatlar_qoshish.dart';
import 'package:imtihon_vazifasi/views/widget/harajatlar_royxati.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          HarajatlarQoshish(),
        ],
        title: const Text(
          "Homescreen",
        ),
      ),
      body: const HarajatlarRoyxati(),
      bottomNavigationBar: const BottomappbarWIDGET(),
    );
  }
}
