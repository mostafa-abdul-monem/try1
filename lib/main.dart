import 'package:flutter/material.dart';
import 'package:sanabel/screens/catgories_gm3yat.dart';
import 'package:sanabel/screens/detail_screen.dart';
import 'screens/categories_screen.dart';
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
          primarySwatch: Colors.green,
          fontFamily: 'Tajawal',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline5: TextStyle(
                  color: Colors.green[200],
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
        'home': (ctx) => CategoriesScreen(),
        CategoryGm3yat.screenRoute: (ctx) => CategoryGm3yat(),
        DetailScreen.screenRoute: (ctx) => DetailScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
