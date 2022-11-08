import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home/components/body.dart';
import 'package:flutter_application_1/screens/home/components/list.dart';
import 'package:flutter_application_1/screens/home/components/text.dart';
import 'package:flutter_application_1/screens/home/components/trending.dart';
import 'package:flutter_application_1/screens/home/components/tv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmdb_api/tmdb_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List trendingMovies = [];

  List topRatedMovies = [];

  List upcomingMovies = [];

  List tv = [];

  List tvOnAir = [];

  List search = [];

  int currentPage = 0;

  late TextEditingController _controller = new TextEditingController();

  final String apikey = 'd6b3ab9c02265858ad9c978ba7408e3b';

  final String readaccesstoken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkNmIzYWI5YzAyMjY1ODU4YWQ5Yzk3OGJhNzQwOGUzYiIsInN1YiI6IjYyYWY2Nzg3NjJlODZmMDA2MDg0YmMzNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.JxLs9pewhZ5OImV69WDKGgJE7Ut00JP4yGsL4N19Ih8';

  @override
  void initState() {
    loadMovies();
    super.initState();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  loadSearchResults(String buscar) async{
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apikey, readaccesstoken),
    logConfig: ConfigLogger(
      showLogs: true,
      showErrorLogs: true 
    ));

    Map searchResults = await tmdbWithCustomLogs.v3.search.queryMovies(buscar);
    setState(() {
      search = searchResults['results'];
    });
  }

  loadMovies()async{
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apikey, readaccesstoken),
    logConfig: ConfigLogger(
      showLogs: true,
      showErrorLogs: true 
    ));

    Map trendingResult = await tmdbWithCustomLogs.v3.movies.getNowPlaying(); 
    Map topRatedResult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvResult = await tmdbWithCustomLogs.v3.tv.getTopRated();
    Map upcomingResult = await tmdbWithCustomLogs.v3.movies.getPopular();
    Map tvOnAirResult = await tmdbWithCustomLogs.v3.tv.getOnTheAir();
    
    setState(() {
      trendingMovies = trendingResult['results'];
      topRatedMovies = topRatedResult['results'];
      tv = tvResult['results'];
      upcomingMovies = upcomingResult['results'];
      tvOnAir = tvOnAirResult['results'];
    });

    print('Aplicacion iniciada...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: 
      currentPage == 0? 
      ListView(
          children: [
            Row(
            children: [
              Container(
                height: 24,
                padding: EdgeInsets.only(left: 20),
                child: Stack(
                  children: <Widget>[
                      Text(
                        "Películas recientes",
                        style: GoogleFonts.robotoSlab(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 20),
                        
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
                onPressed: (){
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=>
                  Lista(trending: trendingMovies)));
                }, child: modified_text(text: "Ver lista", color: Colors.white, size: 14))
            ],
          ),

            TrendingMovies(
              trending: trendingMovies,
            ),
            Row(
            children: [
              Container(
                height: 24,
                padding: EdgeInsets.only(left: 20),
                child: Stack(
                  children: <Widget>[
                    Text(
                        "Películas mejor valoradas",
                        style: GoogleFonts.robotoSlab(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 20),
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
                onPressed: (){
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=>
                  Lista(trending: topRatedMovies)));
                }, child: modified_text(text: "Ver lista", color: Colors.white, size: 14))
            ],
          ),

            TrendingMovies(
              trending: topRatedMovies,
            ),

             Row(
            children: [
              Container(
                height: 24,
                padding: EdgeInsets.only(left: 20),
                child: Stack(
                  children: <Widget>[
                    Text(
                        "Populares actualmente",
                        style: GoogleFonts.robotoSlab(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 20),
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
                onPressed: (){
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=>
                  Lista(trending: upcomingMovies)));
                }, child: modified_text(text: "Ver lista", color: Colors.white, size: 14))
            ],
          ),

            TrendingMovies(
              trending: upcomingMovies,
            ),
            
            /*
            TopRatedMovies(
              toprated: topratedmovies,
            ),
            */
          ],
        )
      : currentPage==1?
      ListView(
          children: [
            Row(
            children: [
              Container(
                height: 24,
                padding: EdgeInsets.only(left: 20),
                child: Stack(
                  children: <Widget>[
                    Text(
                        "Programas mejor valorados",
                        style: GoogleFonts.robotoSlab(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 20),
                        
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
                onPressed: (){
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=>
                  Lista(trending: tv)));

                }, child: modified_text(text: "Ver lista", color: Colors.white, size: 14))
            ],
          ),
            TV(
              trending: tv,
            ),
          Row(
            children: [
              Container(
                height: 24,
                padding: EdgeInsets.only(left: 20),
                child: Stack(
                  children: <Widget>[
                    Text(
                        "Programas nuevos",
                        style: GoogleFonts.robotoSlab(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 20),
                        
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
                onPressed: (){
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=>
                  Lista(trending: tvOnAir)));
                }, child: modified_text(text: "Ver lista", color: Colors.white, size: 14))
            ],
          ),
            TV(
              trending: tvOnAir,
            ),

            
      
          ],
        )
      : currentPage ==2?
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 290,
              child: TextField(
                controller: _controller,
                maxLines: null,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Buscar películas, series...",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            loadSearchResults(_controller.text);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>
                  Lista(trending: search)));  
          }, 

          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
            child: modified_text(text: "Buscar", color: Colors.white, size: 15,)
            ),
        ],
    ),
      )
      :null,
      


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kPrimaryColor,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        currentIndex: currentPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.video_collection), label: "Películas"),
          BottomNavigationBarItem(icon: Icon(Icons.tv_rounded), label: "Programas de TV"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Buscar",),

        ]),
        );
      
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      //title: Text("MovieClient", style: TextStyle(fontSize: 24),),
      title: modified_text(text: "MovieClient", color: Colors.white, size: 24),
      elevation: 0,
    );
  }
}
