// ignore_for_file: prefer_const_constructors

import 'package:firebase_crud/colors.dart';
import 'package:flutter/material.dart';

class AddStudents extends StatefulWidget {
  const AddStudents({Key? key}) : super(key: key);

  @override
  State<AddStudents> createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  final formKey = GlobalKey<FormState>();
  var name = '';
  var email = '';
  var pass = '';
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  addUser() {
    print('user added');
  }

  clearText() {
    nameController.clear();
    emailController.clear();
    passController.clear();
  }

  @override
  void dispose() {
    // clean up the controller when the widget is dispose
    nameController.dispose();
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Student here'),
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
                    controller: nameController,
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
                    controller: emailController,
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
                    controller: passController,
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
                              setState(() {
                                name = nameController.text;
                                email = emailController.text;
                                pass = passController.text;
                                addUser();
                                clearText();
                              });
                            }
                          },
                          child: Text('Register')),
                      ElevatedButton(
                          onPressed: ()=>{clearText()}, child: Text('Reset'))
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
