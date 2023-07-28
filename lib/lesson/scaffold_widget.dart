import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Sample Code'),
        centerTitle: true,
        actions: const [
          Icon(Icons.logout),
          SizedBox(width: 8),
          Icon(Icons.person),
          SizedBox(width: 8),
        ],
        leading: const Icon(Icons.settings),
      ),
      // body: const Center(child: Text('Ini Body')),
      body: Container(
        height: double.infinity,
        // color: Colors.redAccent,
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset.zero,
              blurRadius: 15,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
              const Icon(
                Icons.access_alarm,
                size: 30,
                color: Colors.amberAccent,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/login.png',
                      height: 50,
                    ),
                    Image.network(
                      'https://i.pravatar.cc/300',
                      height: 50,
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 50,
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 45,
                  child: Image.network(
                    'https://i.pravatar.cc/300',
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
