import 'package:flutter/material.dart';

class Badges extends StatefulWidget {
  const Badges({super.key});

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badges'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Badge(
              child: Text('Word'),
            ),
            SizedBox(height: 20),
            Badge(
              backgroundColor: Colors.blue,
              child: Icon(Icons.notifications),
            ),
            SizedBox(height: 20),
            Badge(
              label: Text(
                '3',
                style: TextStyle(height: 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 5),
              backgroundColor: Colors.red,
              textColor: Colors.white,
              // offset: Offset(3, 4),
              // isLabelVisible: false,
              // offset: Offset.zero,
              // alignment: Alignment.topLeft,
              child: Icon(Icons.notifications),
            ),
            SizedBox(height: 20),
            Badge(
              isLabelVisible: false,
              child: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
    );
  }
}
