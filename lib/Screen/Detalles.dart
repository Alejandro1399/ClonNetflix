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
                Padding(padding: EdgeInsets.all(20)),
                cartel(snapshot)],
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

  Stack cartel(AsyncSnapshot snapshot) {
    return Stack(
      children: <Widget>[
        Image.network(
          snapshot.data.poster,
          fit: BoxFit.cover,
          width: double.infinity,
          
        ),
        Container(
          width: double.infinity,
          height: 520.0,
          decoration: new BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                colors: <Color>[Colors.black26, Colors.black87]),
          ),
        ),
        SafeArea(child:  Image.asset(
              'assets/imgs/logo.png',
              width: 35,
              height: 35,
            ),)
      ],
    );
  }
}
