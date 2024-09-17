import 'package:flutter/material.dart';
import 'package:imtihon_vazifasi/views/screens/home_screen.dart';
import 'package:imtihon_vazifasi/views/widget/daromadlar_royxati.dart';

class BottomappbarWIDGET extends StatefulWidget {
  const BottomappbarWIDGET({super.key});

  @override
  State<BottomappbarWIDGET> createState() => _BottomappbarWIDGETState();
}

class _BottomappbarWIDGETState extends State<BottomappbarWIDGET> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.home,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DaromadlarRoyxati();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.book,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_add,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
            ),
          )
        ],
      ),
    );
  }
}
