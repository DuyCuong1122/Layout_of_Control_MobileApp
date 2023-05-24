import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'testLogin.dart';
import 'main2.dart';
import 'main3.dart';
import 'SingleCSV.dart';


void main() => runApp(MyApp()); 

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  double heightSizedbox = 4;
  Color colorAppbar = const Color.fromARGB(200, 255, 215, 185);
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/second': (context) => LoginScreenMain(),
        '/third': (context) => singleCSV(),
      },
      title: 'SFS Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
