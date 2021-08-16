import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const screenRoute = 'gm3ya detail';
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(''),
      ),
    );
  }
}
