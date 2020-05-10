import 'package:aklavya/Pages/About.dart';
import 'package:aklavya/Pages/Analysis.dart';
import 'package:aklavya/Pages/Home.dart';
import 'package:aklavya/Pages/Media.dart';
import 'package:aklavya/Pages/navDrawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Horitab extends StatefulWidget {
  @override
  _HoritabState createState() => _HoritabState();
}

class _HoritabState extends State<Horitab> {
  List<Widget> containers = [
    Container(
      color: Colors.grey[850],
      child: Home(),
    ),

    Container(
      color: Colors.grey[850],
        child: Analysis()
    ),

    Container(
      color: Colors.grey[850],
      child: Media(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: navDrawer(),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context,value){
            return [
              SliverAppBar(
                expandedHeight: 250,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background:Carousel(
                    autoplay: true,
                    boxFit: BoxFit.cover,
                    images: [
                      AssetImage('images/naini.jpg'),
                      AssetImage('images/earth.jpg'),
                      AssetImage('images/india.jpg'),
                      AssetImage('images/sister.jpg')
                    ],

                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1300),
                    dotColor: Colors.black,
                    dotSize: 0.0,
                    indicatorBgPadding: 0.0,

                  ),
                  centerTitle: true,
                ),
                backgroundColor: Colors.green[900],
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: IconButton(
                      icon: Icon(Icons.help_outline),
                      color: Colors.white,
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => About()));
                      },
                    ),
                  )
                ],
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(
                        child: Container(
                            child: Text(
                              "Home",
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ))),
                    Tab(
                      child: Container(
                          child: Text(
                            "Live Statics",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                    ),
                    Tab(
                      child: Container(
                          child: Text(
                            "News",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(children: containers),
          
        ),
      ),
      
    );
  }
}
