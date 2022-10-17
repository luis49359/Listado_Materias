import 'package:flutter/material.dart';
import 'package:listado_materias/colores/colores.dart';
import 'package:listado_materias/pages/home.dart';
import 'package:page_transition/page_transition.dart';

class Materias extends StatefulWidget {
  const Materias({Key? key}) : super(key: key);

  @override
  State<Materias> createState() => _MateriasState();
}

const List<String> list1 = <String>[
  'Ciclo I',
  'Ciclo II',
  'Ciclo III',
  'Ciclo VI',
  'Ciclo V',
  'Ciclo VI'
];
const List<String> list2 = <String>[
  'Materia 1',
  'Materia 2',
  'Materia 3',
  'Materia 4',
  'Materia 5'
];

class _MateriasState extends State<Materias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, appBar: barraSpotApp(), body: cuerpo());
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
            Materias(),
            const SizedBox(
              height: 10,
            ),
            btnRegresar(),
            const SizedBox(
              height: 10,
            ),
          ])),
    );
  }

  Widget Materias() {
    return Container(
      height: 650,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 5, top: 20),
          child: Column(
            children: List.generate(list1.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 25, top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list1[index],
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontSize: 15,
                          color: primario,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 3),
                    Row(
                        children: List.generate(list2.length, (index) {
                      return Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 50),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(color: Colors.black)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      list2[index],
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: const Color.fromARGB(
                                              255, 68, 54, 40),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ]));
                    }))
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget btnRegresar() {
    //Colocarse mouse sobre componentes para saber qué propiedades tiene
    return FlatButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  alignment: Alignment.bottomCenter,
                  child: const Home(),
                  type: PageTransitionType.scale));
        },
        color: Colors.blueAccent,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 150),
        child: const Text(
          "Salir",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ));
  }
}
