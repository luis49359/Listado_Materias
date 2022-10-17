import 'package:flutter/material.dart';
import 'package:listado_materias/colores/colores.dart';
import 'package:listado_materias/pages/login.dart';
import 'package:listado_materias/pages/materias.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
const List<String> list = <String>['Ingeniería en Sistemas', 'Administración de Empresas', 'Arquitectura', 'Licenciatura en Informática'];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: barraSpotApp(),
      body: cuerpo(),
    );
  }

  barraSpotApp() {
    return AppBar(
      backgroundColor: primario,
      elevation: 10,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            // ignore: prefer_const_literals_to_create_immutables
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            "LISTADO MATERIAS",
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }

  Widget cuerpo() {
    return Center(
      child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            iconoUtec(),
            cbxMaterias(),
            btnMostrar(),
            const SizedBox(
              height: 10,
            ),
            btnSalir(),
            const SizedBox(
              height: 10,
            ),
          ])),
    );
  }

  Widget nombreAlumno() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: const Text(
          "Martínez Romero Luis Gerardo - 25-1930-2018",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        ));
  }

  Widget iconoUtec() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Image.asset(
        "assets/img/logoutec.png",
        alignment: Alignment.center,
        height: 120,
        width: 120,
      ),
    );
  }

Widget cbxMaterias() {
    String dropdownValue = list.first;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: primario),
        underline: Container(
          height: 2,
          color: primario,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }


   Widget btnMostrar() {
    //Colocarse mouse sobre componentes para saber qué propiedades tiene
    return FlatButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  alignment: Alignment.bottomCenter,
                  child: const Materias(),
                  type: PageTransitionType.scale));
        },
        color: primario,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 150),
        child: const Text(
          "Mostrar Materias",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ));
  }

   Widget btnSalir() {
    //Colocarse mouse sobre componentes para saber qué propiedades tiene
    return FlatButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  alignment: Alignment.bottomCenter,
                  child: const Login(),
                  type: PageTransitionType.scale));
        },
        color: primario,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 150),
        child: const Text(
          "Salir",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ));
  }
}
