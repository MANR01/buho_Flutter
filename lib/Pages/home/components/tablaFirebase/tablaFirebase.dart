// ignore_for_file: file_names, camel_case_types

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class firebaseTable extends StatefulWidget {
  const firebaseTable({super.key});

  @override
  State<firebaseTable> createState() => _firebaseTableState();
}

class _firebaseTableState extends State<firebaseTable> {
  Query queryFirebase = FirebaseDatabase.instance
      .ref()
      .child('1')
      .orderByChild('fecha')
      .startAfter('04/12/2023')
      .endAt('06/12/2023');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Expanded(
      child: SizedBox(
        height: 200,
        child: FirebaseAnimatedList(
            query: queryFirebase,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              return Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.purple[300],
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Fecha registrada', //'Fecha registrada: ${snapshot.value['fecha'].toString()}',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Estado', //'Estado: ${snapshot.value['estado'].toString()}',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                    ]),
              );
            }),
      ),
    ));
  }
}
