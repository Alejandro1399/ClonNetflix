
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Peliculas.dart';

  Future<List<RespuestaPelis>> obtenerP(String titulo) async {
    final result = await http
        .get(Uri.parse('http://www.omdbapi.com/?s=$titulo&apikey=ab958a0a&'));
    if (result.statusCode == 200) {
      final data = jsonDecode(result.body);
      Iterable lista = data["Search"];
      return lista
          .map((pelicula) => RespuestaPelis.fromJson(pelicula))
          .toList();
    } else {
      throw Exception('Fallo');
    }
  }

