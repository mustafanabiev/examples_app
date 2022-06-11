import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';

class AdaptiveNavigation extends StatefulWidget {
  const AdaptiveNavigation({Key? key}) : super(key: key);

  @override
  _AdaptiveNavigationState createState() => _AdaptiveNavigationState();
}

class _AdaptiveNavigationState extends State<AdaptiveNavigation> {
  int _selectedIndex = 0;

  changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _destinations = <AdaptiveScaffoldDestination>[
    const AdaptiveScaffoldDestination(title: "Home", icon: Icons.home),
    const AdaptiveScaffoldDestination(title: "Call", icon: Icons.call),
    const AdaptiveScaffoldDestination(title: "Mail", icon: Icons.mail),
  ];

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      appBar: AdaptiveAppBar(title: const Text('App Bar')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const Center(child: Text('Hey there')),
      selectedIndex: _selectedIndex,
      destinations: _destinations,
    );
  }
}
