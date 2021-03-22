import 'package:http/http.dart' as http;
import 'Peliculas.dart';

// ignore: non_constant_identifier_names
Future obtenerP(String Titulo) async {
  final result = await http
      .get(Uri.parse('http://www.omdbapi.com/?t=$Titulo&apikey=ab958a0a&'));
  if (result.statusCode == 200) {
    respuestaPelisFromJson(result.body);
    print(result.body);
  } else {
    throw Exception('Fallo');
  }
}
