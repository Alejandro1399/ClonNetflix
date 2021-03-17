import 'dart:ui';
import 'package:clonenetflix/Componentes/itemBs.dart';
import 'package:flutter/material.dart';

class Buscador extends StatefulWidget {
  Buscador({Key key}) : super(key: key);

  @override
  _BuscadorState createState() => _BuscadorState();
}

final buscadorTxt = new TextEditingController();
String buscarTexto;

class _BuscadorState extends State<Buscador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          barrasup(),
          buscarT(),   
        ],
      ),
    );
  }
}

Widget buscarT() {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.normal),
              controller: buscadorTxt,
              decoration: InputDecoration(
                
                filled: true,
                fillColor: Colors.grey[900],
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.grey[700],
                ),
                prefixIcon: Icon(
                  Icons.search_sharp,
                  color: Colors.grey[700],
                ),
                hintText: ' Buscar una serie, una peli, un gen... ',
                hintStyle: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget barrasup() {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Image.asset(
            'assets/imgs/logo.png',
            width: 30,
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 230),
          ),
          Icon(Icons.cast, color: Colors.white),
          Padding(
            padding: EdgeInsets.only(left: 20),
          ),
          Icon(
            Icons.indeterminate_check_box,
            color: Colors.amber,
          )
        ],
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 10),
      ),
    ],
  );
}
