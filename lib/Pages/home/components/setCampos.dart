// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'campos/fechAnterior.dart';
import 'campos/fechPosterior.dart';

class setCampos extends StatelessWidget {
  static final _formKey = GlobalKey<FormState>(debugLabel: 'fechas');
  const setCampos({super.key});

  @override
  Widget build(BuildContext context) {
    final elevatedButtonStyle = ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple.shade300,
        shape: const StadiumBorder());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            //Fecha Anterior
            const setFechAn(
              obscureText: false,
            ),
            const SizedBox(height: 25),
            //Fecha Posterior
            const setFechPos(
              obscureText: false,
            ),
            const SizedBox(height: 25),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery.of(context).size.width - 80,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.search),
                style: elevatedButtonStyle,
                label: const Text('Buscar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
