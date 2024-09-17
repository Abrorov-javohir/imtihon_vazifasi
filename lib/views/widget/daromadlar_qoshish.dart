import 'package:flutter/material.dart';
import 'package:imtihon_vazifasi/data/model/harajatlar.dart';
import 'package:imtihon_vazifasi/data/service/harajatlar_service.dart';

class DaromadlarQoshish extends StatefulWidget {
  const DaromadlarQoshish({super.key});

  @override
  State<DaromadlarQoshish> createState() => _DaromadlarQoshishState();
}

class _DaromadlarQoshishState extends State<DaromadlarQoshish> {
  final service = HarajatlarService();
  final nameController = TextEditingController();
  final summaController = TextEditingController();
  final categoryController = TextEditingController();
  final barchaharajatlar = Harajatlar(
      summa: "summaController",
      category: "category",
      date: DateTime.now(),
      izoh: "izoh",
      id: 1);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Harajatlar Qo'shish",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onTap: () async {},
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "Daromadni ismini kiriting",
                        hintText: "Daromadni ismini kiriting",
                        border:  OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onTap: () {},
                      keyboardType: const TextInputType.numberWithOptions(),
                      decoration: const InputDecoration(
                        labelText: "Daromadni summasini kiriting",
                        hintText: "Daromadni summasini kiriting",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onTap: () {},
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText:
                            "Daromadni qaysi Kategoriyaga qo'shmoqchisiz",
                        hintText: "Daromadni qaysi Kategoriyaga qo'shmoqchisiz",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onTap: () {},
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "Daromadni qaysi Sanaga qo'shmoqchisiz",
                        hintText: "Daromadni qaysi Sanaga qo'shmoqchisiz",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onTap: () {},
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "Izohga nima deb yozmoqchisiz.",
                        hintText: "Izohga nima deb yozmoqchisiz.",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Bekor qilish",
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        service.get();
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Qo'shish",
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      icon: const Icon(
        Icons.add,
      ),
    );
  }
}
