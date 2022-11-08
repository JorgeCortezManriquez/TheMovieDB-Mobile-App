import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home/components/description.dart';
import 'package:flutter_application_1/screens/home/components/text.dart';

class Lista extends StatelessWidget {
  final List trending;
  const Lista({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor.withOpacity(0.5),
      child: ListView.builder(
        itemCount: trending.length,
        
        itemBuilder: (context,index){
          return Card(
            color: Colors.black,
          child: ListTile(
            //title: Text(trending[index]['title']),
            title: modified_text(
              text: trending[index]['title']!=null?trending[index]['title']:trending[index]['name'], 
              color: Colors.white, 
              size: 14),
            //subtitle: Text(trending[index]['release_date'], style: TextStyle(color: kPrimaryColor),),
            subtitle: modified_text(
              text: trending[index]['release_date']!=null?trending[index]['release_date']:trending[index]['first_air_date'], 
              color: Colors.white30, 
              size: 14),
            trailing: Image.network('https://image.tmdb.org/t/p/w500' +
                                          trending[index]['poster_path']),
            onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description(
                                      name: trending[index]['title']!=null?trending[index]['title']:trending[index]['name'],
                                      bannerurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              trending[index]['backdrop_path'],
                                      posterurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              trending[index]['poster_path'],
                                      description: trending[index]['overview'],
                                      vote: trending[index]['vote_average']
                                          .toString(),
                                      launch_on: 
                                      trending[index]['release_date']!=null?trending[index]['release_date']:trending[index]['first_air_date'],
                                    )));},
          ),
        );
        },
        ),
    );
  }
}