import 'package:flutter/material.dart';
import 'package:sanabel/models/gm3yat_item.dart';
import 'package:sanabel/widgets/app_data.dart';
import 'package:sanabel/widgets/sub_widget_item.dart';

class CategoryGm3yat extends StatefulWidget {
  static const screenRoute = 'categoryRoute';

  @override
  _CategoryGm3yatState createState() => _CategoryGm3yatState();
}

class _CategoryGm3yatState extends State<CategoryGm3yat> {
  String? categoryTitle;
  List<Gm3yatItem>? display;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    categoryTitle = routeArgument['title'];
    //this 'arguments' save the arguments from category_item
    display = Gm3yat_data.where((gm3ya) {
      return gm3ya.categories!.contains(categoryId);
    }).toList();
    // this filter saved Gm3yat_data & can access Gm3yat_data where (gm3ya) is instance of Gm3yatItem and return Gm3yatItem.categories to compare with categoryId to show it

    super.didChangeDependencies();
  }

  void _removeGm3ya(String id) {
    setState(() {
      display!.removeWhere((gm3ya) => gm3ya.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$categoryTitle'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return SubWidgetItem(
              id: display![index].id,
              title: display![index].title,
              imageUrl: display![index].imageUrl,
              activities: display![index].imageUrl,
              season: display![index].season.toString(),
              removeItem: _removeGm3ya,
            );
          },
          itemCount: display!.length,
        ));
  }
}
