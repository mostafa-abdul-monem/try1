import 'package:flutter/material.dart';
import 'package:sanabel/models/gm3yat_item.dart';
import 'package:sanabel/widgets/sub_widget_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Gm3yatItem> favorites;
  FavoriteScreen(this.favorites);
  @override
  Widget build(BuildContext context) {
    if (favorites.isEmpty) {
      return Center(
        child: Text('favorites'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return SubWidgetItem(
            id: favorites[index].id,
            title: favorites[index].title,
            imageUrl: favorites[index].imageUrl,
            activities: favorites[index].imageUrl,
            season: favorites[index].season.toString(),
          );
        },
        itemCount: favorites.length,
      );
    }
  }
}
