import 'package:omdb_dart/omdb_dart.dart';

Future<String> pelis(String nombre) async {
  Omdb poster = new Omdb('ab958a0a', nombre);
  await poster.getMovie();
  return '${poster.movie.poster}';
}
