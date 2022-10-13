import 'package:flutter/material.dart';
import 'package:listado_materias/pages/home.dart';
import 'package:page_transition/page_transition.dart';

class Materias extends StatefulWidget {
  const Materias({Key? key}) : super(key: key);

  @override
  State<Materias> createState() => _MateriasState();
}

class _MateriasState extends State<Materias> {
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
      backgroundColor: Colors.white,
      elevation: 10,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            // ignore: prefer_const_literals_to_create_immutables
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            "LISTADO MATERIAS",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }

  Widget cuerpo() {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/img/fondo.jpg"))),
        child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              btnRegresar(),
              const SizedBox(
                height: 10,
              ),
            ])),
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
