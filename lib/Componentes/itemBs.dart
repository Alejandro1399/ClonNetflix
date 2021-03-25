import 'package:clonenetflix/Api/Peliculas.dart';
import 'package:flutter/material.dart';

class ItemBuscador extends StatelessWidget {
  final List<RespuestaPelis> moviesinfo;
  const ItemBuscador({this.moviesinfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 490,
      width: double.infinity,
      child: ListView.builder(
        itemCount: this.moviesinfo.length,
        itemBuilder: (BuildContext context, int index) {
          final peli = this.moviesinfo[index];
          return Card(
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  Image.network(
                    '${peli.poster}',
                    errorBuilder: (BuildContext contex, Object exception,
                        StackTrace stackTrace) {
                      return CircularProgressIndicator();
                    },
                    fit: BoxFit.cover,
                    width: 100.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Flexible(
                    child: Text('${peli.title}',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
