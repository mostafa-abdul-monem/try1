import 'package:flutter/material.dart';
import 'package:sanabel/models/gm3yat_item.dart';
import 'package:sanabel/screens/detail_screen.dart';

class SubWidgetItem extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;
  final String? activities;
  final String? season;
  final Function? removeItem;

  const SubWidgetItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.activities,
    @required this.season,
    @required this.removeItem,
  });

  String? get seasonText {
    if (season == Season.AllSeasons.toString()) {
      return 'كل الزكوات';
    }
    if (season == Season.EidAdha.toString()) {
      return 'زكاة الأضحى';
    }
    if (season == Season.EidFtr.toString()) {
      return 'زكاة الفطر';
    }
    if (season == Season.Ramadan.toString()) {
      return 'رمضان';
    }
  }

  String? get gm3yaTypeText {
    if (season == Gm3yatType.All.toString()) {
      return 'الأنشطة';
    }
    if (season == Gm3yatType.Aytam.toString()) {
      return 'أيتام';
    }
    if (season == Gm3yatType.Hospitals.toString()) {
      return 'علاج';
    }
    if (season == Gm3yatType.Learn.toString()) {
      return 'تعليم';
    }
    if (season == Gm3yatType.Zakah.toString()) {
      return 'زكاة';
    }
  }

  void selectedWidget(BuildContext context) {
    Navigator.of(context)
        .pushNamed(DetailScreen.screenRoute, arguments: id)
        .then((result) {
      if (result != null) {
        removeItem!(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedWidget(context),
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
                        Icons.help,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(gm3yaTypeText.toString()),
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
