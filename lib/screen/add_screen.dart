import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';

import '../connect.dart';

class AddScreen extends StatefulWidget {
  static const String routeName = "/add_screen";
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreen();
}

class _AddScreen extends State<AddScreen> {
  var _inputName = TextEditingController();

  Future<void> _submitFrom() async {
    var connect = await MySqlConnection.connect(MysqlSetting);
    var resuit = await connect.query("""
        INSERT INTO todos (name,status) VALUES(?, ?)    
""", [_inputName.text, 0]);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เพิ่มข้อมูลใหม่"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _inputName,
              ),
              ElevatedButton(
                onPressed: () {
                  _submitFrom();
                },
                child: Text("บันทึก"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
