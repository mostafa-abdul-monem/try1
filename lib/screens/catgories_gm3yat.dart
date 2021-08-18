import 'package:flutter/material.dart';
import 'package:sanabel/widgets/app_data.dart';
import 'package:sanabel/widgets/sub_widget_item.dart';

class CategoryGm3yat extends StatelessWidget {
  static const screenRoute = 'categoryRoute';
  // this const property used to avoid typing error of routes and resued it without take an object of Class

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    final catgoryTitle = routeArgument['title'];
    //this 'arguments' save the arguments from category_item
    final filter = Gm3yat_data.where((gm3ya) {
      return gm3ya.categories!.contains(categoryId);
    }).toList();
    // this filter saved Gm3yat_data & can access Gm3yat_data where (gm3ya) is instance of Gm3yatItem and return Gm3yatItem.categories to compare with categoryId to show it
    return Scaffold(
        appBar: AppBar(
          title: Text('$catgoryTitle'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return SubWidgetItem(
              id: filter[index].id,
              title: filter[index].title,
              imageUrl: filter[index].imageUrl,
              activities: filter[index].imageUrl,
              season: filter[index].season.toString(),
            );
          },
          itemCount: filter.length,
        ));
  }
}
