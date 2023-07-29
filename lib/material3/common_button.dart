import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Button'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // ElevatedButton(
          //   onPressed: () {},
          //   // onPressed: null,
          //   child: Text('Elevated'),
          // ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
          const SizedBox(height: 20),
          FilledButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green),
            ),
            onPressed: () {},
            child: const Text('Filled'),
          ),
          const SizedBox(height: 20),
          FilledButton.tonalIcon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Icon Tonal'),
            // child: const Text('Filled Tonal'),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined'),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: const Text('Text'),
          ),
        ],
      ),
    );
  }
}
