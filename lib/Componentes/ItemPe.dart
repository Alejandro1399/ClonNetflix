import 'package:flutter/material.dart';

class Itemcuadrado extends StatefulWidget {
  Itemcuadrado({Key key}) : super(key: key);

  @override
  _ItemcuadradoState createState() => _ItemcuadradoState();
}

class _ItemcuadradoState extends State<Itemcuadrado> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://e00-marca.uecdn.es/assets/multimedia/imagenes/2021/02/26/16143631973672.jpg',
          fit: BoxFit.cover,
          width: 100.0,
        ),
        SizedBox(
          width: 5.0,
        ),
      ],
    );
  }
}
