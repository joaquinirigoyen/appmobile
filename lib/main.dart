import 'package:app_gym/Login_pagina.dart';
import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.orange,
      accentColor: Colors.grey,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Gimnasio EPET20"),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Pagina principal",
            style: TextStyle(fontSize: 40),
          ),
        ),
        color: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Botonflotante(),
      bottomNavigationBar: NavegacionBoton(),
    ),
  );

  runApp(app);
}

class MyMapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Loginpagina.id,
      routes: {
        Loginpagina.id: (context) => Loginpagina(),
      },
    );
  }
}

class NavegacionBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        // ignore: deprecated_member_use
        BottomNavigationBarItem(
            // ignore: deprecated_member_use
            icon: Icon(Icons.phonelink_ring_outlined),
            // ignore: deprecated_member_use
            title: Text("Turnos telefonicos")),
        BottomNavigationBarItem(
            // ignore: deprecated_member_use
            icon: Icon(Icons.attribution_rounded),
            // ignore: deprecated_member_use
            title: Text("Covid")),
      ],
    );
  }
}

class Botonflotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.search),
        backgroundColor: Colors.orange,
        onPressed: () {
          // print("no tiene uso todavia");
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => Pagina2()));
        });
  }
}

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Gimnasio EPET 20"),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Pantalla de busqueda",
            style: TextStyle(fontSize: 20),
          ),
        ),
        color: Colors.grey,
      ),
      floatingActionButton: Botonflotante(),
      bottomNavigationBar: NavegacionBoton(),
    );
  }
}
