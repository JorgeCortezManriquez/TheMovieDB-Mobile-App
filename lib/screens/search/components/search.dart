import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../../details/components/details_screen.dart';

class Search extends StatelessWidget {
  List<Movie>movies=[
    const Movie (
      title: "The Batman",
      year: "2022",
      urlImage: "https://pics.filmaffinity.com/The_Batman-449856406-large.jpg"
    ),
    const Movie (
      title: "Batman vs Superman",
      year: "2016",
      urlImage: "https://pics.filmaffinity.com/Batman_v_Superman_El_amanecer_de_la_Justicia-728293826-large.jpg"
    ),
    const Movie (
      title: "Batman: The Dark Knight Rises",
      year: "2012",
      urlImage: "https://play-lh.googleusercontent.com/i8F_nMjhXao8_bTeHofrUDZk-i00FxuQMeDrATexcu5WPcvGM7OoUwdA3ooSLhi4YzE-RB9_fBsvGXe1qLQ"
    ),
    const Movie (
      title: "Batman: The Dark Knight",
      year: "2008",
      urlImage: "https://pics.filmaffinity.com/El_caballero_oscuro-102763119-large.jpg"
    ),
    const Movie (
      title: "Batman Begins",
      year: "2005",
      urlImage: "https://pics.filmaffinity.com/Batman_Begins-413277928-large.jpg"
    ),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultados de la búsqueda"),
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