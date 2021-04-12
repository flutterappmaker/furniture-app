import 'package:furniture_store/body.dart';
import 'package:furniture_store/constants.dart';
import 'package:flutter/material.dart';
import 'package:furniture_store/header.dart';
import 'package:furniture_store/web_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: kBgColor,
          primaryColor: kLightGreen1,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: TextButton.styleFrom(backgroundColor: kLightGreen3)),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: kBgColor),
            bodyText2: TextStyle(color: kBgColor),
            headline5: TextStyle(color: kBodyTextColor),
          )),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [Header(), Body()],
        ),
      ),
    );
  }
}
