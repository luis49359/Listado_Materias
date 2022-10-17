import 'package:flutter/material.dart';
import 'package:listado_materias/colores/colores.dart';
import 'package:listado_materias/pages/home.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            carnet(),
            pass(),
            btnIngresar(),
            const SizedBox(
              height: 10,
            )
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

  Widget carnet() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: const TextField(
        maxLines: 1,
        decoration: InputDecoration(
            hintText: "Carnet",
            filled: true,
            icon: Icon(Icons.card_membership)),
      ),
    );
  }

  Widget pass() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: const TextField(
        maxLines: 1,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          filled: true,
          icon: Icon(Icons.password),
        ),
      ),
    );
  }

  Widget btnIngresar() {
    //Colocarse mouse sobre componentes para saber qué propiedades tiene
    return FlatButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  alignment: Alignment.bottomCenter,
                  child: Home(),
                  type: PageTransitionType.scale));
        },
        color: primario,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 150),
        child: const Text(
          "Ingresar",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ));
  }
}
