import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalles"),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Title(color: Colors.black, child: Text("Título", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20,),
              padding: EdgeInsets.all(6),
              height: 330.0,
              
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kPrimaryColor,
                borderRadius: new BorderRadius.only(
                            topLeft:  const  Radius.circular(40.0),
                            topRight: const  Radius.circular(40.0),
                            bottomLeft:  const  Radius.circular(40.0),
                            bottomRight: const  Radius.circular(40.0))
              ),
            child: Icon(Icons.movie, size: 300, color: Colors.white,),
            ),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus luctus, vehicula nulla vitae, congue odio. Proin ac")
          ],
        ),
      ),
    );
  }
}