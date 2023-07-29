import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  const IconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
            const SizedBox(height: 20),
            IconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
            const SizedBox(height: 20),
            IconButton.filledTonal(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
            const SizedBox(height: 20),
            IconButton.outlined(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
