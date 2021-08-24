import 'package:flutter/material.dart';
import 'package:sanabel/models/gm3yat_item.dart';
import 'package:sanabel/screens/catgories_gm3yat.dart';
import 'package:sanabel/screens/detail_screen.dart';
import 'package:sanabel/screens/tabs_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sanabel/widgets/app_data.dart';
import 'screens/catgories_gm3yat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Gm3yatItem> favorite = [];
  void _manageFavorite(String id) {
    final existingIndex = favorite.indexWhere((element) => element.id == id);
    if (existingIndex >= 0) {
      setState(() {
        favorite.removeAt(existingIndex);
      });
    } else {
      setState(() {
        favorite.add(Gm3yat_data.firstWhere((element) => element.id == id));
      });
    }
  }

  bool _isFavorite(String id) {
    return favorite.any((element) => element.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'),
      ],
      title: 'Sanabel',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          fontFamily: 'Tajawal',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline5: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                ),
                headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                ),
              )),
      initialRoute: 'home',
      routes: {
        'home': (ctx) => TabScreen(favorite),
        CategoryGm3yat.screenRoute: (ctx) => CategoryGm3yat(),
        DetailScreen.screenRoute: (ctx) =>
            DetailScreen(_manageFavorite, _isFavorite),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
