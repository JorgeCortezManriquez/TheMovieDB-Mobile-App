import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../../details/components/details_screen.dart';

class MoreUpcoming extends StatelessWidget {
  List<Movie>movies=[
    const Movie (
      title: "Men",
      year: "2022",
      urlImage: "https://upload.wikimedia.org/wikipedia/en/0/03/AlexGarlandMenPoster.jpg"
    ),
    const Movie (
      title: "Thor: Love & Thunder",
      year: "2022",
      urlImage: "https://cloudfront-us-east-1.images.arcpublishing.com/infobae/ZMWTK2S7DRGPXFVMHEFODA56QA.jpg"
    ),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Próximamente"),
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