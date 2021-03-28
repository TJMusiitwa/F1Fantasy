import 'package:f1_fantasy/fantasyNav.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'F1 Fantasy',
      theme: ThemeData(
        primaryColor: Colors.red,
        primaryColorBrightness: Brightness.dark,
        fontFamily: 'Formula1',
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black)),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000000),
                width: 1.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              gapPadding: 4.0),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000000),
                width: 1.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              gapPadding: 4.0),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        primaryColorBrightness: Brightness.dark,
        accentColor: Colors.red,
        accentColorBrightness: Brightness.dark,
        fontFamily: 'Formula1',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.light,
      home: FantasyNav(),
      debugShowCheckedModeBanner: false,
    );
  }
}
