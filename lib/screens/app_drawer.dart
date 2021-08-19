import 'package:flutter/material.dart';
import 'package:sanabel/screens/filter_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  ListTile buildListTile(
      BuildContext context, String title, IconData icon, VoidCallback onTaped) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline5,
      ),
      onTap: onTaped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.orange,
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'الدليل',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          buildListTile(context, 'الجمعيات', Icons.dashboard, () {
            Navigator.pushReplacementNamed(context, 'home');
          }),
          buildListTile(context, 'تصنيف', Icons.filter_list, () {
            Navigator.pushReplacementNamed(context, FilterScreen.screenRoute);
          }),
        ],
      ),
    );
  }
}
