import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/details/components/details_screen.dart';
import 'package:flutter_application_1/screens/more/components/more_on_air.dart';
import 'package:flutter_application_1/screens/more/components/more_popular.dart';
import 'package:flutter_application_1/screens/more/components/more_premiere.dart';
import 'package:flutter_application_1/screens/more/components/more_upcoming.dart';
import 'package:flutter_application_1/screens/search/components/search.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          //Peliculas en estreno
          
          Row(
            children: [
              Container(
                height: 24,
                padding: EdgeInsets.only(left: 20),
                child: Stack(
                  children: <Widget>[
                    Text(
                      "Películas en estreno",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    Container(
                      height: 7,
                      
                    )

                  ],
                ),
              ),
              Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MorePremiere(),));}, child: Text("Ver más"))
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding/2,
                  bottom: kDefaultPadding*2.5,
                ),
                width: size.width *0.4,
                child: Column(
                  children: <Widget>[
                    
                    //Icon(Icons.tv_rounded, size: size.height*0.1,),
                    Image.network("https://es.web.img3.acsta.net/pictures/22/02/18/10/20/5195258.jpg",height: 224,),
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),));},
                      child: Container(
                        padding: EdgeInsets.all(kDefaultPadding / 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23),
                            )
                          ]
                        ),
                        child: Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Sonic 2\n", style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                    text: "2022", style: TextStyle(color: kPrimaryColor.withOpacity(0.5), fontWeight: FontWeight.bold)),
                                ])),
                          ],
                        ),
                      ),
                    )

                  ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding/2,
                  bottom: kDefaultPadding*2.5,
                ),
                width: size.width *0.4,
                child: Column(
                  children: <Widget>[
                    //Icon(Icons.tv_rounded, size: size.height*0.1,),
                    Image.network("https://pics.filmaffinity.com/The_Batman-449856406-large.jpg",height: 224,),
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),));},
                      child: Container(
                        padding: EdgeInsets.all(kDefaultPadding / 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23),
                            )
                          ]
                        ),
                        child: Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "The Batman\n", style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                    text: "2022", style: TextStyle(color: kPrimaryColor.withOpacity(0.5), fontWeight: FontWeight.bold)),
                                ])),
                          ],
                        ),
                      ),
                    )

                  ]),
              ),
              
            ],
          ),
          
          //Proximamente
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 24,
                child: Stack(
                  children: <Widget>[
                    Text(
                      "Próximamente",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    Container(
                      height: 7,
                      
                    )

                  ],
                ),
              ),
              Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreUpcoming(),));}, child: Text("Ver más"))
            ],
          ),
          
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding/2,
                  bottom: kDefaultPadding*2.5,
                ),
                width: size.width *0.4,
                child: Column(
                  children: <Widget>[
                    //Icon(Icons.tv_rounded, size: size.height*0.1,),
                    Image.network("https://upload.wikimedia.org/wikipedia/en/0/03/AlexGarlandMenPoster.jpg",height: 226,),
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),));},
                      child: Container(
                        padding: EdgeInsets.all(kDefaultPadding / 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23),
                            )
                          ]
                        ),
                        child: Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Men\n", style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                    text: "2022", style: TextStyle(color: kPrimaryColor.withOpacity(0.5), fontWeight: FontWeight.bold)),
                                ])),
                          ],
                        ),
                      ),
                    )

                  ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding/2,
                  bottom: kDefaultPadding*2.5,
                ),
                width: size.width *0.4,
                child: Column(
                  children: <Widget>[
                    //Icon(Icons.tv_rounded, size: size.height*0.1,),
                    Image.network("https://cloudfront-us-east-1.images.arcpublishing.com/infobae/ZMWTK2S7DRGPXFVMHEFODA56QA.jpg",height: 226,),
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),));},
                      child: Container(
                        padding: EdgeInsets.all(kDefaultPadding / 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23),
                            )
                          ]
                        ),
                        child: Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Thor: Love & Thunder\n", style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                    text: "2022", style: TextStyle(color: kPrimaryColor.withOpacity(0.5), fontWeight: FontWeight.bold)),
                                ])),
                          ],
                        ),
                      ),
                    )

                  ]),
              ),
              
            ],
          ),
          
          //Programas en emisión
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 24,
                child: Stack(
                  children: <Widget>[
                    Text(
                      "Programas en emisión",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    Container(
                      height: 7,
                      
                    )

                  ],
                ),
              ),
              Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreOnAir(),));}, child: Text("Ver más"))
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding/2,
                  bottom: kDefaultPadding*2.5,
                ),
                width: size.width *0.4,
                child: Column(
                  children: <Widget>[
                    //Icon(Icons.tv_rounded, size: size.height*0.1,),
                    Image.network("https://es.web.img3.acsta.net/pictures/22/02/21/20/10/2589351.jpg",height: 224,),
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),));},
                      child: Container(
                        padding: EdgeInsets.all(kDefaultPadding / 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23),
                            )
                          ]
                        ),
                        child: Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Halo\n", style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                    text: "2022", style: TextStyle(color: kPrimaryColor.withOpacity(0.5), fontWeight: FontWeight.bold)),
                                ])),
                          ],
                        ),
                      ),
                    )

                  ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding/2,
                  bottom: kDefaultPadding*2.5,
                ),
                width: size.width *0.4,
                child: Column(
                  children: <Widget>[
                    //Icon(Icons.tv_rounded, size: size.height*0.1,),
                    Image.network("https://img1.ak.crunchyroll.com/i/spire2/dd4cb19f0248492a47a3f4c74d1f5b0d1646497812_main.jpg",height: 224,),
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),));},
                      child: Container(
                        padding: EdgeInsets.all(kDefaultPadding / 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23),
                            )
                          ]
                        ),
                        child: Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Spy x Family\n", style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                    text: "2022", style: TextStyle(color: kPrimaryColor.withOpacity(0.5), fontWeight: FontWeight.bold)),
                                ])),
                          ],
                        ),
                      ),
                    )

                  ]),
              ),
              
            ],
          ),
          
          //Programas mejor valorados
           Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 24,
                child: Stack(
                  children: <Widget>[
                    Text(
                      "Programas populares",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    Container(
                      height: 7,
                      
                    )

                  ],
                ),
              ),
              Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MorePopular(),));}, child: Text("Ver más"))
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding/2,
                  bottom: kDefaultPadding*2.5,
                ),
                width: size.width *0.4,
                child: Column(
                  children: <Widget>[
                    //Icon(Icons.tv_rounded, size: size.height*0.1,),
                    Image.network("https://r4.abcimg.es/resizer/resizer.php?imagen=https%3A%2F%2Fstatic4.abc.es%2Fmedia%2Fseries%2F000%2F003%2F906%2Fpeaky-blinders-1.jpg&nuevoancho=690&medio=abc",),
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),));},
                      child: Container(
                        padding: EdgeInsets.all(kDefaultPadding / 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23),
                            )
                          ]
                        ),
                        child: Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Peaky Blinders\n", style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                    text: "2013", style: TextStyle(color: kPrimaryColor.withOpacity(0.5), fontWeight: FontWeight.bold)),
                                ])),
                          ],
                        ),
                      ),
                    )

                  ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding/2,
                  bottom: kDefaultPadding*2.5,
                ),
                width: size.width *0.4,
                child: Column(
                  children: <Widget>[
                    //Icon(Icons.tv_rounded, size: size.height*0.1,),
                    Image.network("https://www.quever.news/u/fotografias/m/2022/3/10/f768x1-25443_25570_5050.jpg", height: 227,),
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),));},
                      child: Container(
                        padding: EdgeInsets.all(kDefaultPadding / 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23),
                            )
                          ]
                        ),
                        child: Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Moon Knight\n", style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                    text: "2022", style: TextStyle(color: kPrimaryColor.withOpacity(0.5), fontWeight: FontWeight.bold)),
                                ])),
                          ],
                        ),
                      ),
                    )

                  ]),
              ),
              
            ],
          ),
          

        ],
      ),
    );
  }
}

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.1,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36)
              ),
              ),
  
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ]
              ),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  label: Text("Buscar..."),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Search(),));}),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}