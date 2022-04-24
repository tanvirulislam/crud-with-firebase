// ignore_for_file: prefer_const_constructors

import 'package:firebase_crud/list_student.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter CRUD'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/addStudents');
            },
            child: Text('Add', textScaleFactor: 1.5,),
          ),
        ],
      ),
      body: ListStudent()
    );
  }
}
