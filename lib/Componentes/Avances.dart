import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Avances extends StatefulWidget {
  String titulo;
  Widget item;
  int cantidad;
  Avances(this.titulo, this.item, this.cantidad);

  @override
  _AvancesState createState() =>
      _AvancesState(this.titulo, this.item, this.cantidad);
}

class _AvancesState extends State<Avances> {
  String titulo;
  Widget item;
  int cantidad;
  _AvancesState(this.titulo, this.item, this.cantidad);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          titulo,
          style: TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: .0),
        ),
        Container(
          height: 100,
          child: ListView.builder(
            itemCount: cantidad,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}
