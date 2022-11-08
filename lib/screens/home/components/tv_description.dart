import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/components/text.dart';


class TvDescription extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launch_on;
  static String myVideoId = 'PQSagzssvUQ';  

/*
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
  */

   const TvDescription(
      {Key? key,
      required this.name,
      required this.description,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.launch_on})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(children: [
          Container(
              height: 250,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    child: modified_text(text: '⭐ Puntuación promedio - ' + vote, color: Colors.white, size: 24,)),
                    //child: Text('⭐ Puntación promedio - ' + vote, style: TextStyle(color: Colors.white))),
              ])),
          SizedBox(height: 15),
          Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  'Not Loaded',)),
          Container(
              padding: EdgeInsets.only(left: 10),
              child:
                  modified_text(text: 'Fecha de estreno - ' + launch_on, color: Colors.white, size: 15,)),
          Row(
            children: [
              Container(
                height: 200,
                width: 100,
                child: Image.network(posterurl),
              ),
              Flexible(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: modified_text(text: description, color: Colors.white, size: 15,)),
                    //child: Text(description, style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
          /*
          Container(
            child: YoutubePlayer(
          controller: _controller,
          liveUIColor: Colors.amber,
        ),
          )
          */
          
        
        ]),
      ),
    );
  }
}