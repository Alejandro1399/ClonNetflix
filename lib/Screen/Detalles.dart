import 'package:clonenetflix/Api/Datos.dart';
import 'package:flutter/material.dart';

class Detalles extends StatelessWidget {
  final String nombre;
  final String poster;
  Detalles({this.nombre, this.poster});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder(
        future: getmovie(this.nombre),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData)
            return Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10)),
                cartel(snapshot),
                botones(),
              ],
            );
          else if (snapshot.hasError)
            return Center(
                child: Text('Pelicula no encotrada',
                    style: TextStyle(color: Colors.white, fontSize: 50)));
          else
            return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

Stack cartel(AsyncSnapshot snapshot) {
  return Stack(
    children: <Widget>[
      Image.network(
        snapshot.data.poster,
        width: double.infinity,
        height: 490.0,
        fit: BoxFit.cover,
      ),
      Container(
        width: double.infinity,
        height: 490.0,
        decoration: new BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              colors: <Color>[Colors.black26, Colors.black87]),
        ),
      ),
      SafeArea(
          child: Image.asset(
        'assets/imgs/logo.png',
        width: 35,
        height: 35,
      )),
    ],
  );
}

Widget botones() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(children: <Widget>[
          IconButton(
              icon: Icon(Icons.add, color: Colors.white), onPressed: () {}),
          Text(
            'Mi lista',
            style: TextStyle(color: Colors.white, fontSize: 10.0),
          )
        ]),
        SizedBox(
          width: 20.0,
        ),
        // ignore: deprecated_member_use
        // FlatButton.icon(
        //   onPressed: () {},
        //   color: Colors.white,
        //   icon: Icon(Icons.play_arrow_rounded, color: Colors.black),
        //   label: Text('Reproducir', style: TextStyle(color: Colors.black)),
        // ),
        // SizedBox(
        //   width: 20.0,
        // ),
        Column(
          children: <Widget>[
            IconButton(
                onPressed: () {}, icon: Icon(Icons.star, color: Colors.white)),
            Text(
              'Calificacion',
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            )
          ],
        ),
      ],
    ),
  );
}
