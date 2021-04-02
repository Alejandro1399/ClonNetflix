// To parse this JSON data, do
//
//     final pelicula = peliculaFromJson(jsonString);

class Pelicula {
  Pelicula({
    this.title,
    this.year,
    this.rated,
    this.released,
    this.runtime,
    this.genre,
    this.director,
    this.writer,
    this.actors,
    this.plot,
    this.language,
    this.country,
    this.awards,
    this.poster,
    this.metascore,
    this.imdbRating,
    this.imdbVotes,
    this.imdbId,
    this.type,
    this.dvd,
    this.boxOffice,
    this.production,
    this.website,
    this.response,
  });

  String title;
  String year;
  String rated;
  String released;
  String runtime;
  String genre;
  String director;
  String writer;
  String actors;
  String plot;
  String language;
  String country;
  String awards;
  String poster;
  String metascore;
  String imdbRating;
  String imdbVotes;
  String imdbId;
  String type;
  String dvd;
  String boxOffice;
  String production;
  String website;
  String response;

  factory Pelicula.fromJson(Map<String, dynamic> json) {
    return Pelicula(
      title: json["Title"],
      year: json["Year"],
      rated: json["Rated"],
      released: json["Released"],
      runtime: json["Runtime"],
      genre: json["Genre"],
      director: json["Director"],
      writer: json["Writer"],
      actors: json["Actors"],
      plot: json["Plot"],
      language: json["Language"],
      country: json["Country"],
      awards: json["Awards"],
      poster: json["Poster"],
      metascore: json["Metascore"],
      imdbRating: json["imdbRating"],
      imdbVotes: json["imdbVotes"],
      imdbId: json["imdbID"],
      type: json["Type"],
      dvd: json["DVD"],
      boxOffice: json["BoxOffice"],
      production: json["Production"],
      website: json["Website"],
      response: json["Response"],
    );
  }
}