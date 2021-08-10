import 'package:flutter/material.dart';

class CategoryGm3yat extends StatelessWidget {
  static const screenRoute = 'categoryRoute';
  // this const used to avoid typing error of routes and resued it without take an object of Class

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    final catgoryTitle = routeArgument['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text('$catgoryTitle'),
      ),
      body: Center(
        child: Text('$catgoryTitle'),
      ),
    );
  }
}
