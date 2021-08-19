import 'package:flutter/material.dart';
import 'package:sanabel/screens/catgories_gm3yat.dart';
import 'package:sanabel/screens/detail_screen.dart';
import 'package:sanabel/screens/filter_screen.dart';
import 'package:sanabel/screens/tabs_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/catgories_gm3yat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                  color: Colors.black,
                  fontSize: 22.0,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                ),
              )),
      initialRoute: 'home',
      routes: {
        'home': (ctx) => TabScreen(),
        CategoryGm3yat.screenRoute: (ctx) => CategoryGm3yat(),
        DetailScreen.screenRoute: (ctx) => DetailScreen(),
        FilterScreen.screenRoute: (ctx) => FilterScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
