import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider_app/music_cards.dart';
import 'package:carousel_slider_app/small_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MUSIC',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Ubuntu',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.settings,
                      size: 28,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CarouselSlider(
            items: [
              MusicCard(type: 'chill',),
              MusicCard(type: 'acoustic',),
              MusicCard(type: 'drive',),
              MusicCard(type: 'night',),
              MusicCard(type: 'pop',),
              MusicCard(type: 'summer',),
            ],
            options: CarouselOptions(
              height: 450.0,
//              autoPlay: true,
              enlargeCenterPage: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Text(
              'Most Popular',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Ubuntu',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SmallCards(no: 1,),
                  SizedBox(
                    width: 15,
                  ),
                  SmallCards(no: 2,),
                  SizedBox(
                    width: 15,
                  ),
                  SmallCards(no: 3,),
                  SizedBox(
                    width: 15,
                  ),
                  SmallCards(no: 4,),
                  SizedBox(
                    width: 15,
                  ),
                  SmallCards(no: 4,),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




