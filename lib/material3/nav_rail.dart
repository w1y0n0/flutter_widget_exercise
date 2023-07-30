import 'package:flutter/material.dart';

class NavRail extends StatefulWidget {
  const NavRail({super.key});

  @override
  State<NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.grey[700],
            destinations: [
              NavigationRailDestination(
                icon: FloatingActionButton(
                  onPressed: () {
                    selectedIndex = 0;
                    setState(() {});
                  },
                  child: const Icon(Icons.add),
                ),
                label: const Text('Add'),
              ),
              const NavigationRailDestination(
                icon: Icon(Icons.access_alarm),
                label: Text('Alarm'),
              ),
              const NavigationRailDestination(
                icon: Icon(Icons.account_balance_wallet),
                label: Text('Wallet'),
              ),
            ],
            labelType: NavigationRailLabelType.selected,
            selectedIndex: selectedIndex,
            onDestinationSelected: (value) {
              selectedIndex = value;
              setState(() {});
            },
          ),
          Expanded(
            child: [
              const Icon(Icons.add),
              const Icon(Icons.access_alarm),
              const Icon(Icons.account_balance_wallet),
            ][selectedIndex],
          ),
        ],
      ),
    );
  }
}
