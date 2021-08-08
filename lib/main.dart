import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
                  fontSize: 24.0,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                ),
                headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                ),
              )),
      home: CategoriesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
