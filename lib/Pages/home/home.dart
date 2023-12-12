// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:buho/Pages/home/components/campos/setCampos.dart';
import 'package:flutter/material.dart';
import 'components/tablaFirebase/tablaFirebase.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 25,
            ),
            //Mensaje de Bienvenida
            const Text(
              'Bienvenido',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),

            //Indicaciones
            const Text('Ingrese las fechas a consultar',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                )),
            const SizedBox(
              height: 25,
            ),
            //Llamado al metodo encargado de mostrar los campos de fecha
            setCampos(),
            const SizedBox(height: 25),

            //Tabla con la informacion de Firebase
            const firebaseTable()
          ],
        ),
      ),
    );
  }
}
