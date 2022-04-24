// ignore_for_file: prefer_const_constructors

import 'package:firebase_crud/colors.dart';
import 'package:flutter/material.dart';

class UpdateStudent extends StatefulWidget {
  const UpdateStudent({Key? key}) : super(key: key);

  @override
  State<UpdateStudent> createState() => _UpdateStudentState();
}

class _UpdateStudentState extends State<UpdateStudent> {
  final formKey = GlobalKey<FormState>();
  updateUser() {
    print('student updated');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Update student'),
        ),
        body: Container(
          color: backgroundColors,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 22,
                ),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextFormField(
                      initialValue: 'mizan',
                      onChanged: (value) {},
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'please enter name';
                        }
                        return null;
                      },
                      toolbarOptions: ToolbarOptions(
                        copy: true,
                        cut: true,
                        paste: true,
                        selectAll: true,
                      ),
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Name',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlue),
                        ),
                        suffixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      initialValue: 'mizan@g.com',
                      onChanged: (value) {},
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'please enter email';
                        } else if (!val.contains('@')) {
                          return 'please enter valid email';
                        }
                        return null;
                      },
                      toolbarOptions: ToolbarOptions(
                        copy: true,
                        cut: true,
                        paste: true,
                        selectAll: true,
                      ),
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlue),
                        ),
                        suffixIcon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      initialValue: '123456',
                      onChanged: (value) {},
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'please enter password';
                        }
                        return null;
                      },
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlue),
                        ),
                        suffixIcon: Icon(Icons.lock),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              //validate return true if form is valid, therwise return false
                              if (formKey.currentState!.validate()) {
                                updateUser();
                                Navigator.pop(context);
                              }
                            },
                            child: Text('Update')),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Back'))
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
