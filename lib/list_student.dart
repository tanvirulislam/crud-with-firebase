// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_crud/update_student.dart';
import 'package:flutter/material.dart';

class ListStudent extends StatefulWidget {
  const ListStudent({Key? key}) : super(key: key);

  @override
  State<ListStudent> createState() => _ListStudentState();
}

class _ListStudentState extends State<ListStudent> {
  deleteUser(id){
    print('user deleted $id');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 600,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'List of Students',
                  style: TextStyle(
                    color: Colors.purple,
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  textScaleFactor: 2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(120.0),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                ),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text('Name', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: [
                      Text('Email', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: [
                      Text('Action', style: TextStyle(fontSize: 20.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Javatpoint')]),
                    Column(children: [Text('Flutter')]),
                    TableCell(
                        child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UpdateStudent()),
                              );
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                      ],
                    ))
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
