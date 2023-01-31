import 'package:flutter/material.dart';
import 'package:gallrey/Screens/bikes.dart';
import 'package:gallrey/Screens/cars.dart';
import 'package:gallrey/Screens/naruto.dart';
import 'Screens/ant.dart';
import 'Screens/burj.dart';
import 'Screens/cricket.dart';
import 'Screens/home.dart';
import 'Screens/rivers.dart';
import 'Screens/ronaldo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'cars': (context) => const cars(),
        'naruto': (context) => const naruto(),
        'bikes': (context) => const bikes(),
        'cr7': (context) => const cr7(),
        'cricket': (context) => const Cricketers(),
        'Burj': (context) => const burj(),
        'rivers': (context) => const Rivers(),
        'ant': (context) => const Antillia(),
      },
    );
  }
}
