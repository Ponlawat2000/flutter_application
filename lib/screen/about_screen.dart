import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  static const String routeName = "/about";
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
