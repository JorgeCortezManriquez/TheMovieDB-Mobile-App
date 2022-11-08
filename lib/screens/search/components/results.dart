import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../../details/components/details_screen.dart';

class Results extends StatelessWidget {
  List<Movie>movies=[
    const Movie (
      title: "The Batman",
      year: "2022",
      urlImage: "https://pics.filmaffinity.com/The_Batman-449856406-large.jpg"
    ),
    const Movie (
      title: "Sonic 2",
      year: "2022",
      urlImage: "https://es.web.img3.acsta.net/pictures/22/02/18/10/20/5195258.jpg"
    ),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Películas en cines"),
        backgroundColor: kPrimaryColor,
      ),
      body: ListView.builder(
        itemCount: movies.length,
        
        itemBuilder: (context,index){
          final movie = movies[index];
          return Card(
          child: ListTile(
            title: Text(movie.title),
            subtitle: Text(movie.year),
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