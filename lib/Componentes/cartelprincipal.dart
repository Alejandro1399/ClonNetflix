import 'package:clonenetflix/Componentes/barrasup.dart';
import 'package:flutter/material.dart';

class CartelP extends StatefulWidget {
  CartelP({Key key}) : super(key: key);

  @override
  _CartelPState createState() => _CartelPState();
}

class _CartelPState extends State<CartelP> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CartelBB(),
        textos(),
        Botones(),
      ],
    );
  }
}

// ignore: non_constant_identifier_names
Widget CartelBB() {
  return Stack(
    children: <Widget>[
      Image.asset('assets/imgs/Breaking bad.jpg', fit: BoxFit.cover),
      Container(
        width: double.infinity,
        height: 280.0,
        decoration: new BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              colors: <Color>[Colors.black12, Colors.black87]),
        ),
      ),
      SafeArea(
        child: NavBar(),
      )
    ],
  );
}

Widget textos() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        Icons.fiber_manual_record,
        color: Colors.white,
        size: 6.0,
      ),
      SizedBox(
        width: 6.0,
      ),
      Text(
        'Dramas de TV sobre crimen',
        style: TextStyle(fontSize: 10.0, color: Colors.white),
      ),
      SizedBox(
        width: 10.0,
      ),
      Icon(
        Icons.fiber_manual_record,
        color: Colors.white,
        size: 6.0,
      ),
      SizedBox(
        width: 6.0,
      ),
      Text(
        'Thrillers',
        style: TextStyle(fontSize: 10.0, color: Colors.white),
      ),
      SizedBox(
        width: 10.0,
      ),
      Icon(
        Icons.fiber_manual_record,
        color: Colors.white,
        size: 6.0,
      ),
      SizedBox(
        width: 6.0,
      ),
      Text(
        'Dramas de EE:UU',
        style: TextStyle(fontSize: 10.0, color: Colors.white),
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget Botones() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(children: <Widget>[
          Icon(Icons.add, color: Colors.white),
          Text(
            'Mi lista',
            style: TextStyle(color: Colors.white, fontSize: 10.0),
          )
        ]),
        SizedBox(
          width: 20.0,
        ),
        // ignore: deprecated_member_use
        FlatButton.icon(
          onPressed: () {},
          color: Colors.white,
          icon: Icon(Icons.play_arrow_rounded, color: Colors.black),
          label: Text('Reproducir', style: TextStyle(color: Colors.black)),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          children: <Widget>[
            Icon(Icons.info_outline, color: Colors.white),
            Text(
              'Información',
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            )
          ],
        ),
      ],
    ),
  );
}
