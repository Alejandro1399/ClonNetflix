import 'package:flutter/material.dart';

class Itemredondo extends StatefulWidget {
  Itemredondo({Key key}) : super(key: key);

  @override
  _ItemredondoState createState() => _ItemredondoState();
}

class _ItemredondoState extends State<Itemredondo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(alignment: Alignment.bottomCenter, children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.amberAccent),
                borderRadius: BorderRadius.circular(100.0)),
            child: ClipOval(
              child: Image.asset(
                'assets/imgs/Mandalorian.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Image.asset(
            'assets/imgs/Mando.png',
            width: 100,
            // height: 100,
          ),
        ]),
        SizedBox(
          width: 15.0,
        ),
      ],
    );
  }
}
