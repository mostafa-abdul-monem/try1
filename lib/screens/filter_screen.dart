import 'package:flutter/material.dart';
import 'package:sanabel/screens/app_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  static const screenRoute = 'filter';
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _isInEidAdha = false;
  bool _isInEidFtr = false;
  bool _isInRamadan = false;

  SwitchListTile builtSwitchListTile(String title, String subTitle,
      bool initialValue, Function(bool?) onChangeVlaue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      value: initialValue,
      onChanged: onChangeVlaue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التصنيف'),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Expanded(
              child: ListView(
            children: [
              builtSwitchListTile(
                  'زكاة عيد الأضحى',
                  'إظهار جمعيات تقبل زكاة عيد الأضحى ',
                  _isInEidAdha, (newVlaue) {
                setState(() {
                  _isInEidAdha = newVlaue!;
                });
              }),
              builtSwitchListTile('زكاة عيد الفطر',
                  'إظهار جمعيات تقبل زكاة عيد الفطر', _isInEidFtr, (newVlaue) {
                setState(() {
                  _isInEidFtr = newVlaue!;
                });
              }),
              builtSwitchListTile(
                  'زكاة رمضان',
                  'إظهار جمعيات تقبل زكاة وشنط رمضان',
                  _isInRamadan, (newVlaue) {
                setState(() {
                  _isInRamadan = newVlaue!;
                });
              })
            ],
          ))
        ],
      ),
    );
  }
}
