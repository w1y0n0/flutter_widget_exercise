import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const Center(child: Icon(Icons.explore)),
        const Center(child: Icon(Icons.pets)),
        const Center(child: Icon(Icons.account_box_outlined)),
      ][currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (value) {
          currentIndex = value;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.pets),
            label: 'Pets',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_box_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
