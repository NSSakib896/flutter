import 'dart:convert';

import 'package:class_18/models/movieModel.dart';
import 'package:http/http.dart';

class MovieApi{

//everything is sync in flutter
static Future<Movielist> getMovies() async {
  
  var url = Uri.parse('https://yts.mx/api/v2/list_movies.json');

  var response = await get(url);

  if (response.statusCode == 200) {
    var jsonResponse =
        json.decode(response.body) as Map<String, dynamic>;

        return Movielist.fromJson(jsonResponse['data']['movies']);

  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
}