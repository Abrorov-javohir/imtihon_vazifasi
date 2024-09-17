import 'package:flutter/material.dart';
import 'package:imtihon_vazifasi/data/service/harajatlar_service.dart';

class DeleteDaromadlar extends StatefulWidget {
  const DeleteDaromadlar({super.key});

  @override
  State<DeleteDaromadlar> createState() => _DeleteDaromadlarState();
}

class _DeleteDaromadlarState extends State<DeleteDaromadlar> {
  final service = HarajatlarService();

  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        service.delete();
      },
      icon: const Icon(
        Icons.delete,
        color: Colors.red,
      ),
    );
  }
}
