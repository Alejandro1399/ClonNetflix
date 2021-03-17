import 'package:flutter/material.dart';

class ItemBuscador extends StatefulWidget {
  ItemBuscador({Key key}) : super(key: key);

  @override
  _ItemBuscadorState createState() => _ItemBuscadorState();
}

class _ItemBuscadorState extends State<ItemBuscador> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
        child: Row(
      
      children: <Widget>[
        Image.network(
          'https://e00-marca.uecdn.es/assets/multimedia/imagenes/2021/02/26/16143631973672.jpg',
          fit: BoxFit.cover,
          width: 100.0,
        ),
        SizedBox(
          width: 5.0,
        ),
        Text('Titulo',style: TextStyle(color: Colors.white)),
      ],
    ));
  }
}
