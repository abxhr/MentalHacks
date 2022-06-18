import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hack Your mind',
      theme: ThemeData(
        primarySwatch: Colors.amber,
  
      ),
      home: const MyHomePage(),
      routes: {
        ResultScreen.routeName : (context) => ResultScreen()
      },
    );
  }
}