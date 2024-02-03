import 'package:flutter/material.dart';
import '../top_stories/top_stories.dart';
import '../../constants/assets_manager.dart';
import '../../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bodyOptions = <Widget>[
    const TopStories(),
    const Text('2'),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: AssetsManager.homepageIcon,
              activeIcon: AssetsManager.homepageIconAccent,
              label: 'homepage',
            ),
            BottomNavigationBarItem(
              icon: AssetsManager.bookmarkIcon,
              activeIcon: AssetsManager.bookmarkIconAccent,
              label: 'bookmarks',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Constants.purplePrimary,
          onTap: _onItemTapped,
        ),
        body: bodyOptions.elementAt(_selectedIndex),
      );
}
