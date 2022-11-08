import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../../details/components/details_screen.dart';

class MorePopular extends StatelessWidget {

  final List trending = [];

  List<Movie>movies=[
    const Movie (
      title: "Peaky Blinders",
      year: "2013",
      urlImage: "https://r4.abcimg.es/resizer/resizer.php?imagen=https%3A%2F%2Fstatic4.abc.es%2Fmedia%2Fseries%2F000%2F003%2F906%2Fpeaky-blinders-1.jpg&nuevoancho=690&medio=abc"
    ),
    const Movie (
      title: "Moon Knight",
      year: "2022",
      urlImage: "https://www.quever.news/u/fotografias/m/2022/3/10/f768x1-25443_25570_5050.jpg"
    ),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programas populares"),
        backgroundColor: kPrimaryColor,
      ),
      body: ListView.builder(
        itemCount: movies.length,
        
        itemBuilder: (context,index){
          final movie = movies[index];
          return Card(
          child: ListTile(
            title: Text(movie.title),
            subtitle: Text(movie.year, style: TextStyle(color: kPrimaryColor),),
            trailing: Image.network(movie.urlImage),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),));},
          ),
        );
        },
        ),
        
    );
  }
}


class Movie{
  final String title;
  final String year;
  final String urlImage;

  const Movie({
    required this.title,
    required this.year,
    required this.urlImage
  });
}