// ignore_for_file: file_names, camel_case_types

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class firebaseTable extends StatefulWidget {
  const firebaseTable({super.key});

  @override
  State<firebaseTable> createState() => _firebaseTableState();
}

class _firebaseTableState extends State<firebaseTable> {
  final Future<Firebase> _fApp = Firebase.initializeApp() as Future<Firebase>;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _fApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('Ocurrio un error al intentar conectarse');
          } else if (snapshot.hasData) {
            return const Text('Se conecto correctamente a Firebase');
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
