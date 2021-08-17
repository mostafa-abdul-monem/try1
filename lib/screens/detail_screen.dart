import 'package:flutter/material.dart';
import 'package:sanabel/widgets/app_data.dart';

class DetailScreen extends StatelessWidget {
  sectionTitle(BuildContext context, String titleText) {
    return Container(
      margin: EdgeInsets.all(10.0),
      alignment: Alignment.topRight,
      child: Text(
        titleText,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  listViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 250,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: child,
    );
  }

  static const screenRoute = 'gm3ya detail';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    // ModalRoute connect the var to (context)
    final selectedData = Gm3yat_data.firstWhere((gm3ya) => gm3ya.id == id);
    //compare only id in this page to the id in Gm3yat_data to return it
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedData.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedData.imageUrl.toString(),
                fit: BoxFit.cover,
              ),
            ),
            sectionTitle(context, 'الأنشطة'),
            listViewContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  elevation: 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(selectedData.activities![index]),
                  ),
                ),
                itemCount: selectedData.activities!.length,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            sectionTitle(context, 'البرامج'),
            listViewContainer(ListView.builder(
              itemBuilder: (ctx, index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text(selectedData.program![index].toString()),
                  ),
                  Divider(),
                ],
              ),
              itemCount: selectedData.program!.length,
            )),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
