// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class setFechAn extends StatelessWidget {
  final bool obscureText;
  const setFechAn({super.key, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.purple.shade600)),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        textAlign: TextAlign.center,
        obscureText: obscureText,
        style: const TextStyle(fontSize: 14, color: Colors.black),
        decoration: const InputDecoration(
            border: InputBorder.none,
            label: Text(
              'Fecha de Inicio',
              style: TextStyle(color: Colors.black87),
            ),
            prefixIcon: Icon(Icons.date_range_rounded)),
      ),
    );
  }
}
