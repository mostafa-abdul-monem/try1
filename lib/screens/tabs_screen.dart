import 'package:flutter/material.dart';
import 'package:sanabel/screens/about_us.dart';
import 'package:sanabel/screens/categories_screen.dart';
import 'package:sanabel/screens/favorite_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  //private method will only used in this class (_)
  int _selectedScreenIndex = 0;
  final List<Map> _screens = [
    {'Screen': CategoriesScreen(), 'Title': 'التصنيفات'},
    {'Screen': FavoriteScreen(), 'Title': 'المفضلة'},
    {'Screen': AboutUs(), 'Title': 'من نحن'}
  ];
  //using Object in Map when we not sure about the type of data will become

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screens[_selectedScreenIndex]['Title'].toString(),
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: _screens[_selectedScreenIndex]['Screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.amberAccent,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined), label: 'التصنيفات'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined), label: 'المفضل'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'من نحن'),
        ],
      ),
    );
  }
}
