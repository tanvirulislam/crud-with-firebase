// ignore_for_file: prefer_const_constructors

import 'package:firebase_crud/add_students.dart';
import 'package:firebase_crud/homepage.dart';
import 'package:firebase_crud/update_student.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyB8mHjYzLMF3trydDtzRj_NDQXfUpZIQWQ',
        appId: '1:371646131293:android:93aa5dcbfd311e6c4ff1b4',
        messagingSenderId: '371646131293',
        projectId: 'fir-crud-8b48e'),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/addStudents': (context) => AddStudents(),
        'update': (context) => UpdateStudent(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
