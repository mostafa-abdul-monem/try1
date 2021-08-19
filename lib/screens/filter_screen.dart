import 'package:flutter/material.dart';
import 'package:sanabel/screens/app_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  static const screenRoute = 'filter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التصنيف'),
      ),
      drawer: AppDrawer(),
      body: Text(''),
    );
  }
}
