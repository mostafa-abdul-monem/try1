import 'package:flutter/material.dart';
import 'package:sanabel/models/gm3yat_item.dart';

class SubWidgetItem extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  final String? activities;
  final String? season;

  const SubWidgetItem({
    @required this.title,
    @required this.imageUrl,
    @required this.activities,
    @required this.season,
  });

  String? get seasonText {
    if (season == Season.AllSeasons) {
      return 'كل الأنشطة';
    }
    if (season == Season.EidAdha) {
      return 'ذكاة الأضحى';
    }
    if (season == Season.EidFtr) {
      return 'ذكاة الفطر';
    }
    if (season == Season.Ramadan) {
      return 'رمضان';
    }
  }

  void selectedWidget() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectedWidget,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 7,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl!,
                    height: 200.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250.0,
                  alignment: Alignment.bottomRight,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.0),
                          Colors.black.withOpacity(0.8)
                        ],
                        stops: [
                          0.6,
                          1
                        ]),
                  ),
                  child: Text(
                    title!,
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.fade,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(seasonText.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(seasonText.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(seasonText.toString()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
