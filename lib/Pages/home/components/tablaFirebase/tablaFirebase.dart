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
  final queryFirebase = FirebaseDatabase.instance
      .ref('maquina')
      .startAt('12/03/2023')
      .endAt('14/03/2023');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: FirebaseAnimatedList(
              shrinkWrap: true,
              defaultChild: const Text(
                'Buscando...',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              query: queryFirebase,
              itemBuilder: (context, snapshot, animation, index) {
                return ListTile(
                  leading: const Icon(Icons.data_array),
                  title: Text(snapshot.child('fecha').toString()),
                );
              }),
        )
      ],
    );
  }
}
