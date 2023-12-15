// ignore_for_file: file_names, camel_case_types

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'components/fechAnterior.dart';
import 'components/fechPosterior.dart';

class setCampos extends StatelessWidget {
  static final _formKey = GlobalKey<FormState>(debugLabel: 'fechas');
  final TextEditingController fechAn = TextEditingController();
  final TextEditingController fechPos = TextEditingController();
  setCampos({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            //Fecha Anterior
            setFechAn(
              controller: fechAn,
            ),
            const SizedBox(height: 15),
            //Fecha Posterior
            setFechPos(
              controller: fechPos,
            ),
            const SizedBox(height: 15),
            //Boton de busqueda
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery.of(context).size.width - 80,
              child: OutlinedButton.icon(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                  } else {
                    if (kDebugMode) {
                      print("Ocurrio un error al verificar los campos");
                    }
                  }
                },
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
