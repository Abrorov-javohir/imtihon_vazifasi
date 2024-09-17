import 'package:flutter/material.dart';
import 'package:imtihon_vazifasi/views/widget/delete_harajatlar_widget.dart';
import 'package:imtihon_vazifasi/views/widget/edit_harajatlar.dart';

class HarajatlarRoyxati extends StatefulWidget {
  const HarajatlarRoyxati({super.key});

  @override
  State<HarajatlarRoyxati> createState() => _HarajatlarRoyxatiState();
}

class _HarajatlarRoyxatiState extends State<HarajatlarRoyxati> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, snapshot) {
        return const ListTile(
          title: Text("Harajat 1"),
          subtitle: Text("2000"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              EditHarajatlar(),
              DeleteHarajatlarWidget(),
            ],
          ),
        );
      },
    );
  }
}
