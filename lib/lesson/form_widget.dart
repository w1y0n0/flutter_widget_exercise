import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  late TextEditingController nameController;

  late int count;

  @override
  void initState() {
    nameController = TextEditingController();
    count = 10;
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                label: Text('Nama'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                count += 5;
                setState(() {});
              },
              child: const Text('Simpan'),
            ),
            const SizedBox(height: 10),
            Text(
              nameController.text.isNotEmpty
                  ? 'Result: ${nameController.text}'
                  : '',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text(
              '$count',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
