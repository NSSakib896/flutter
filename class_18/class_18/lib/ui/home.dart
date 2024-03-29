import 'package:class_18/models/movieModel.dart';
import 'package:class_18/network/MovieApi.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State <Homepage> createState() =>  HomepageState();
}


class  HomepageState extends State <Homepage> {
  Future

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movielist = MovieApi.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movie app'),),
      body: FutureBuilder(
        future: movielist, 
        builder: (context,snapshot){
          if (snapshot.hasData()){
            return GridView.builder(
              itemCount: snapshot.data?.movies.length ?? 0,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount: 3), 
            itemBuilder: (context, index){
              return Container(child: Text(''));
            });

            
          }else{
            return CircularProgressIndicator();
          }
        }),
    );
  }
}