import 'package:flutter/material.dart';
import 'package:flutter_application/screen/about_screen.dart';
import 'package:flutter_application/screen/add_screen.dart';
import 'package:flutter_application/screen/contact_screen.dart';
import 'package:flutter_application/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        routes: {
          '/home': (context) => HomeScreen(),
          '/about': (context) => AboutScreen(),
          '/contact': (context) => contactscreen(),
          '/add_screen': (context) => AddScreen()
        });
  }
}
