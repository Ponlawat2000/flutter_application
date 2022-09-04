import 'package:flutter/material.dart';

class contactscreen extends StatefulWidget {
  static const String routeName = "/contact";
  const contactscreen({super.key});

  @override
  State<contactscreen> createState() => _contactscreen();
}

class _contactscreen extends State<contactscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.red.shade200,
        child: Center(
          child: Text("หน้าโฮมเพจ"),
        ),
      ),
    );
  }
}
