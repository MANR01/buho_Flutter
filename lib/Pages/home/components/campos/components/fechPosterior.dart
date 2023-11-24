// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class setFechPos extends StatelessWidget {
  final bool obscureText;
  const setFechPos({super.key, required this.obscureText});

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
              'Fecha de Conclusión',
              style: TextStyle(color: Colors.black87),
            ),
            prefixIcon: Icon(Icons.date_range_rounded)),
      ),
    );
  }
}
