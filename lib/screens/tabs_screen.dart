import 'package:flutter/material.dart';
import 'package:sanabel/models/gm3yat_item.dart';
import 'package:sanabel/screens/about_us.dart';
import 'package:sanabel/screens/categories_screen.dart';
import 'package:sanabel/screens/favorite_screen.dart';

class TabScreen extends StatefulWidget {
  final List<Gm3yatItem> favoriteGm3ya;
  TabScreen(this.favoriteGm3ya);
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
  late List<Map> _screens;
  @override
  void initState() {
    _screens = [
      {'Screen': CategoriesScreen(), 'Title': 'التصنيفات'},
      {'Screen': FavoriteScreen(widget.favoriteGm3ya), 'Title': 'المفضلة'},
      {'Screen': AboutUs(), 'Title': 'من نحن'}
    ];
    super.initState();
  }

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
              icon: Icon(Icons.star_border_outlined), label: 'المفضلة'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'من نحن'),
        ],
      ),
    );
  }
}
