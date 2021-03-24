import 'package:clonenetflix/Api/Peliculas.dart';
import 'package:flutter/material.dart';

class ItemBuscador extends StatefulWidget {
  final List<RespuestaPelis> moviesinfo;
  ItemBuscador({this.moviesinfo});

  @override
  _ItemBuscadorState createState() => _ItemBuscadorState(this.moviesinfo);
}

class _ItemBuscadorState extends State<ItemBuscador> {
  final List<RespuestaPelis> _moviesinfo;
  _ItemBuscadorState(this._moviesinfo);

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
            Text('${_moviesinfo.length}',
                style: TextStyle(color: Colors.white)),
          ],
        ));
  }
}
