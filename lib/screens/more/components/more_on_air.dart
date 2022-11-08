import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../../details/components/details_screen.dart';

class MoreOnAir extends StatelessWidget {
  List<Movie>movies=[
    const Movie (
      title: "Halo",
      year: "2022",
      urlImage: "https://es.web.img3.acsta.net/pictures/22/02/21/20/10/2589351.jpg"
    ),
    const Movie (
      title: "Spy x Family",
      year: "2022",
      urlImage: "https://img1.ak.crunchyroll.com/i/spire2/dd4cb19f0248492a47a3f4c74d1f5b0d1646497812_main.jpg"
    ),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programas en emisión"),
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