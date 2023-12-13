// ignore_for_file: file_names, camel_case_types

import 'package:buho/Pages/tablaFirebase/tablaFirebase.dart';
import 'package:flutter/material.dart';

class setTabla extends StatelessWidget {
  const setTabla({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      child: const firebaseTable(),
    );
  }
}
