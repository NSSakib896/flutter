class Movielist{
  List<MovieModel>? movies;
  Movielist();

  factory Movielist.fromJson(List<dynamic> json){
    Movielist movielist = Movielist();
      print(json[0]);
      for(int i=0; i<json.length; i++){
        var obj = MovieModel.fromJson(json[i]);
        movielist.movies!.add(obj);
      }

    return Movielist();
  }
}

class MovieModel{
  int? id;
  String? title;
  double? rating;
  String? small_cover_image;

  MovieModel({this.id, this.title, this.rating, this.small_cover_image});

  factory MovieModel.fromJson(Map<String, dynamic> json){
    return MovieModel(
      id: json['id'],
      title: json['title'],
      rating: json['rating'],
      small_cover_image: json['small_cover_image'],
    );
  }
}