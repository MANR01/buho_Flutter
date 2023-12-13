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
  final queryFirebase = FirebaseDatabase.instance.ref('maquina');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            height: 320,
            child: FirebaseAnimatedList(
                shrinkWrap: true,
                defaultChild: const Text(
                  'Buscando...',
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
                query: queryFirebase,
                itemBuilder: (context, snapshot, animation, index) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16))),
                        child: ListTile(
                          title: Text(
                            'Fecha: ${snapshot.child('fecha').value}',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.white),
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Hora: ${snapshot.child('hora').value}',
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white)),
                              const SizedBox(
                                width: 12,
                              ),
                              Text('Estado: ${snapshot.child('estado').value}',
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      )
                    ],
                  );
                }),
          ),
        )
      ],
    );
  }
}
