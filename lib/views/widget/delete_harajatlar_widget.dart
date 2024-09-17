import 'package:flutter/material.dart';
import 'package:imtihon_vazifasi/data/service/harajatlar_service.dart';

class DeleteHarajatlarWidget extends StatefulWidget {
  const DeleteHarajatlarWidget({super.key});

  @override
  State<DeleteHarajatlarWidget> createState() => _DeleteHarajatlarWidgetState();
}

class _DeleteHarajatlarWidgetState extends State<DeleteHarajatlarWidget> {
  final service = HarajatlarService();

  @override
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
