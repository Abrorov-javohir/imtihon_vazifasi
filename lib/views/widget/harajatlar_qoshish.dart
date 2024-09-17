import 'package:flutter/material.dart';
import 'package:imtihon_vazifasi/data/model/harajatlar.dart';
import 'package:imtihon_vazifasi/data/service/harajatlar_service.dart';

class HarajatlarQoshish extends StatefulWidget {
  const HarajatlarQoshish({super.key});

  @override
  State<HarajatlarQoshish> createState() => _HarajatlarQoshishState();
}

class _HarajatlarQoshishState extends State<HarajatlarQoshish> {
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
                        labelText: "Harajatni ismini kiriting",
                        hintText: "Harajatni ismini kiriting",
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
                        labelText: "Harajatni summasini kiriting",
                        hintText: "Harajatni summasini kiriting",
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
                            "Harajatingizni qaysi Kategoriyaga qo'shmoqchisiz",
                        hintText:
                            "Harajatingizni qaysi Kategoriyaga qo'shmoqchisiz",
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
                        labelText: "Harajatingizni qaysi Sanaga qo'shmoqchisiz",
                        hintText: "Harajatingizni qaysi Sanaga qo'shmoqchisiz",
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
