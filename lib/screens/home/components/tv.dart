import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home/components/description.dart';
import 'package:flutter_application_1/screens/home/components/text.dart';

class TV extends StatelessWidget {
  final List trending;

  const TV({Key? key, required this.trending}) : super(key: key);
  @override



  
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          SizedBox(height: 10),
          Container(
              // color: Colors.red,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trending.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description(
                                      name: trending[index]['name'],
                                      bannerurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              trending[index]['backdrop_path'],
                                      posterurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              trending[index]['poster_path'],
                                      description: trending[index]['overview'],
                                      vote: trending[index]['vote_average']
                                          .toString(),
                                      launch_on: trending[index]
                                          ['first_air_date'],
                                    )));
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        // color: Colors.green,
                        width: 250,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500' +
                                            trending[index]['poster_path']),
                                    fit: BoxFit.cover),
                              ),
                              height: 165,
                            ),
                            SizedBox(height: 5),
                            Container(
                    
                              child: modified_text(text: trending[index]['name'] != null
                                      ? trending[index]['name']
                                      : 'Loading',
                                      color: Colors.white,
                                      size: 12,),
                    
                              /*
                              child: Text(
                                 
                                  trending[index]['name'] != null
                                      ? trending[index]['name']
                                      : 'Loading',
                                      style: TextStyle(color: kPrimaryColor),),
                                      */
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}