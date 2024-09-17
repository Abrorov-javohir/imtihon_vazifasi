import 'package:flutter/material.dart';
import 'package:imtihon_vazifasi/data/service/harajatlar_service.dart';

class EditDaromadlar extends StatefulWidget {
  const EditDaromadlar({super.key});

  @override
  State<EditDaromadlar> createState() => _EditDaromadlarState();
}

class _EditDaromadlarState extends State<EditDaromadlar> {
  final service = HarajatlarService();
  final nameController = TextEditingController();
  final summaController = TextEditingController();
  final categoryController = TextEditingController();
  final dateController = TextEditingController();
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
                      controller: nameController,
                      onTap: () {},
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "Daromadni ismini kiriting",
                        hintText: "Daromadni ismini kiriting",
                        border: OutlineInputBorder(),
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
                        hintText:
                            "Daromadni qaysi Kategoriyaga qo'shmoqchisiz",
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
                        service.update(
                          name: nameController,
                          sana: dateController,
                          summa: summaController,
                        );
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Qo'shish",
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
      icon: const Icon(
        Icons.edit,
      ),
    );
  }
}
