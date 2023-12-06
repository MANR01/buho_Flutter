// ignore_for_file: camel_case_types, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class setFechPos extends StatelessWidget {
  final controller;
  const setFechPos({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    var fechmask = MaskTextInputFormatter(
        mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.purple.shade600)),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        inputFormatters: [fechmask],
        keyboardType: TextInputType.datetime,
        textAlign: TextAlign.center,
        controller: controller,
        style: const TextStyle(fontSize: 14, color: Colors.black),
        decoration: const InputDecoration(
            hintText: "DD/MM/AAAA",
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
