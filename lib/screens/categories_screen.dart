import 'package:flutter/material.dart';
import 'package:sanabel/widgets/app_data.dart';
import 'package:sanabel/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        childAspectRatio: 7 / 8,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      children: Categories_Data.map((getData) =>
              CategoryItem(getData.id!, getData.title!, getData.imageUrl!))
          .toList(),
    );
  }
}
