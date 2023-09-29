import 'package:flutter/material.dart';
import 'package:smartparking/modules/welcomepage/logo/logo.dart';
import 'package:smartparking/modules/welcomepage/welcome/welcome.dart';

void main() {

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.greenAccent,
        //scaffoldBackgroundColor: Colors.white,
        //appBarTheme: AppBarTheme(backgroundColor: Colors.white,

        //   ),
      ),
      //themeMode: ThemeMode.dark,
      home:logo(),
    );
  }
}
