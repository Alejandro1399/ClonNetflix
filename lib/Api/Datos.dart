import 'package:omdb_dart/omdb_dart.dart';

void main() {
  getMovie();
} 

Future<void> getMovie() async {
  Omdb client = new Omdb("ab958a0a", "Vengadores");
  await client.getMovie(); // call getMovie to get the all data
  print("Title : ${client.movie.title}"); // print Title of the movie
  print("Released : ${client.movie.released}"); //print Released Date
  print("Runtime : ${client.movie.runtime}"); //runtime
  print("Poster URL : ${client.movie.poster}"); //URL of poster
  print("Director :${client.movie.director} "); //Director
  print("Writer :${client.movie.writer} "); //
  print("Actors :${client.movie.actors} ");
  print("Plot :${client.movie.plot} ");
  print("Language :${client.movie.language} ");
  print("Country :${client.movie.country} ");
  print("Awards :${client.movie.awards} ");
  print("Meta Score :${client.movie.metascore} ");
  print("IMDB Rating :${client.movie.imdbRating} ");
  print("IMDB Votes :${client.movie.imdbVotes} ");
  print("IMDB ID :${client.movie.imdbID} ");
  print("Website :${client.movie.website} ");
  print("Production :${client.movie.production} ");
  print("Box Office :${client.movie.boxOffice} ");
}