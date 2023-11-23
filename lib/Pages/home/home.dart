// ignore_for_file: camel_case_types

import 'package:buho/Pages/home/components/setCampos.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            //Mensaje de Bienvenida
            Text(
              'Bienvenido',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(
              height: 15,
            ),

            //Indicaciones
            Text('Ingrese las fechas a consultar',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                )),
            SizedBox(
              height: 25,
            ),
            //Llamado al metodo encargado de mostrar los campos de fecha
            setCampos(),
          ],
        ),
      ),
    );
  }
}