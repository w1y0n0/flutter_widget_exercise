import 'package:flutter/material.dart';

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            FloatingActionButton(
              heroTag: 'fab1',
              // mini: true,
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 20),
            FloatingActionButton.extended(
              heroTag: 'fab2',
              onPressed: () {},
              label: const Text('Extended'),
              icon: const Icon(Icons.add),
            ),
            const SizedBox(height: 20),
            FloatingActionButton.large(
              heroTag: 'fab3',
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 20),
            FloatingActionButton.small(
              heroTag: 'fab4',
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
