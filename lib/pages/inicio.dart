import 'package:flutter/material.dart';
import 'package:listado_materias/pages/principal.dart';

class ListadoMaterias extends StatelessWidget {
  const ListadoMaterias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
