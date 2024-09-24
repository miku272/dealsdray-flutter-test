import 'package:flutter/material.dart';
import 'package:flutter_internship_test/screens/home_screen.dart';

import '../widgets/search_box.dart';

class BottomNavigator extends StatefulWidget {
  final int setScreen; // Will come handy if we want to jump to a specified screen directly from outside using navigator

  const BottomNavigator({this.setScreen = 0, super.key});

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  var _currentScreen = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  void initState() {
    super.initState();

    _initializeScreen();
  }

  void _initializeScreen() {
    setState(() {
      _currentScreen = widget.setScreen;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      // currentScreen = index;
      _currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'DealsDray',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/profile');
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/settings');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 10,
        title: const SearchBox(),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: _screens[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.golf_course_outlined),
            label: 'Deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Deals',
          ),
        ],
      ),
    );
  }
}
