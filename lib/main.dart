import 'package:f1_fantasy/fantasyNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'F1 Fantasy',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 24, 1, 1),
        fontFamily: 'Formula1',
        appBarTheme: AppBarTheme(
            color: Color.fromRGBO(255, 24, 1, 1),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
            systemOverlayStyle: SystemUiOverlayStyle.light),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000000),
                width: 1.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              gapPadding: 4.0),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFD80000),
                width: 1.2,
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
        fontFamily: 'Formula1',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
      ),
      themeMode: ThemeMode.light,
      home: FantasyNav(),
      debugShowCheckedModeBanner: false,
    );
  }
}
