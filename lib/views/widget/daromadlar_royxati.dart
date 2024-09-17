import 'package:flutter/material.dart';
import 'package:imtihon_vazifasi/views/widget/bottomappbar.dart';
import 'package:imtihon_vazifasi/views/widget/daromadlar_qoshish.dart';
import 'package:imtihon_vazifasi/views/widget/delete_daromadlar.dart';
import 'package:imtihon_vazifasi/views/widget/edit_daromadlar.dart';

class DaromadlarRoyxati extends StatefulWidget {
  const DaromadlarRoyxati({super.key});

  @override
  State<DaromadlarRoyxati> createState() => _DaromadlarRoyxatiState();
}

class _DaromadlarRoyxatiState extends State<DaromadlarRoyxati> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          DaromadlarQoshish(),
        ],
        title: const Text(
          "Homescreen",
        ),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, snapshot) {
          return const ListTile(
            title: Text("Daromadlar"),
            subtitle: Text("2000"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                EditDaromadlar(),
                DeleteDaromadlar(),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomappbarWIDGET(),
    );
  }
}
