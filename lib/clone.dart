import 'package:clonenetflix/Componentes/Avances.dart';
import 'package:clonenetflix/Componentes/ItemAv.dart';
import 'package:clonenetflix/Componentes/ItemPe.dart';
import 'package:clonenetflix/Componentes/cartelprincipal.dart';
import 'package:flutter/material.dart';

class Clone extends StatefulWidget {
  Clone({Key key}) : super(key: key);

  @override
  _CloneState createState() => _CloneState();
}

class _CloneState extends State<Clone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              CartelP(),
              Avances('Avances', Itemredondo(), 10),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
              ),
              Avances('Mi lista', Itemcuadrado(), 10),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
              ),
              Avances('Populares en Netflix', Itemcuadrado(), 10),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
              ),
              Avances('Tendencias', Itemcuadrado(), 10),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
              ),
              Avances('Comedias', Itemcuadrado(), 10),
            ],
          );
        },
      ),
    );
  }
}
