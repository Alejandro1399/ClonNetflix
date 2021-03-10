import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(
              'assets/imgs/logo.png',
              width: 30,
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 250),
            ),
            Icon(
              Icons.search_sharp,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
            ),
            Icon(
              Icons.indeterminate_check_box,
              color: Colors.amber,
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Series',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            Text(
              'Peliculas',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            Text(
              'Mi lista',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            )
          ],
        )
      ],
    );
  }
}
