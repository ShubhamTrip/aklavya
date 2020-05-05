import 'package:aklavya/Pages/Analysis.dart';
import 'package:aklavya/Pages/Home.dart';
import 'package:aklavya/Pages/Media.dart';
import 'package:aklavya/Pages/navDrawer.dart';
import 'package:flutter/material.dart';

class Horitab extends StatefulWidget {
  @override
  _HoritabState createState() => _HoritabState();
}

class _HoritabState extends State<Horitab> {
  List<Widget> containers = [
    Container(
      color: Colors.cyanAccent,
    ),
    Container(
      color: Colors.cyan,
      child: Analysis(),
    ),
    Container(
      color: Colors.red,
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
                  background: Image.asset(
                    'images/naini.jpg',
                    fit: BoxFit.fill,
                  ),
                  centerTitle: true,
                ),
                backgroundColor: Colors.green,
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: IconButton(
                      icon: Icon(Icons.help_outline),
                      color: Colors.white,
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
                            "Analysis",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                    ),
                    Tab(
                      child: Container(
                          child: Text(
                            "Media",
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
