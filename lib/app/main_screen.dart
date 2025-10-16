import 'package:flutter/material.dart';
import 'package:otex/app/widgets/custom_navigation_bar.dart';
import 'package:otex/features/home/presentation/screens/home_screen.dart';
import 'package:otex/features/profile/presentation/screens/plans_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPageIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    Placeholder(color: Colors.green),
    Placeholder(color: Colors.blue),
    Placeholder(color: Colors.red),
    Placeholder(color: Colors.orange),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentPageIndex = index;
    });
    // push the plans page to the user when he first opens the profile screen
    // this should be handled different if there was an actual user
    if (index == 4) {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => const PlansPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _currentPageIndex, children: _pages),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: CustomNavigationBar(
          currentPage: _currentPageIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
