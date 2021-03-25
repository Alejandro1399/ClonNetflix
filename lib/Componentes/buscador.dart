import 'dart:ui';
import 'package:clonenetflix/Api/Peliculas.dart';
import 'package:clonenetflix/Api/Datos.dart';
import 'package:flutter/services.dart';
import 'package:clonenetflix/Componentes/itemBs.dart';
import 'package:flutter/material.dart';

class Buscador extends StatefulWidget {
  Buscador({Key key}) : super(key: key);

  @override
  _BuscadorState createState() => _BuscadorState();
}

final buscadorTxt = new TextEditingController();
String buscarTexto = '';

List<RespuestaPelis> listapelis = <RespuestaPelis>[];

class _BuscadorState extends State<Buscador> {
  @override
  void initState() {
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              barrasup(),
              ite(),
              if (buscarTexto.length > 0)
                FutureBuilder(
                  future: obtenerP(buscarTexto),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData)
                      return ItemBuscador(
                        moviesinfo: snapshot.data,
                      ); 
                    else if (snapshot.hasError)
                      return Center(child:Text('Pelicula no encotrada',style:TextStyle(color: Colors.white, fontSize: 50)));
                    else
                      return Center(child: CircularProgressIndicator());
                  },
                ),
            ],
          );
        },
      ),
    );
  }

  Column ite() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.normal),
                controller: buscadorTxt,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[900],
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colors.grey[700],
                  ),
                  prefixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          buscarTexto = buscadorTxt.text;
                          SystemChannels.textInput
                              .invokeMethod('TextInput.hide');
                        });
                        
                      },
                      icon: Icon(
                        Icons.search_sharp,
                        color: Colors.grey[700],
                      )),
                  hintText: ' Buscar una serie, una peli, un gen...',
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget barrasup() {
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
            padding: EdgeInsets.only(left: 230),
          ),
          Icon(Icons.cast, color: Colors.white),
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
    ],
  );
}
