import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("About",style: TextStyle(fontFamily: 'Righteous-Regular')),
          backgroundColor: Colors.green[900],
        ),
        body: ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(left:5,top: 10,bottom: 10),
              child: Text("About Aklavya",style: TextStyle(fontSize: 24,color: Colors.blue[900],fontWeight: FontWeight.w800,),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Text("Aklavya is a Covid-19 Tracker and Awareness app that is made for both Android as well as Ios platform. This application consists of almost everything one needs to have for the self-awareness against Covid-19. "
                  "You can check the live status of the world as well as your Country.",style: TextStyle(fontSize: 17),textAlign: TextAlign.start,),
            ),
            Divider(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 5,top: 10,bottom: 10),
              child: Text("About me",style: TextStyle(fontSize: 24,color: Colors.blue[900],fontWeight: FontWeight.w800)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Text("Hey there, I am Shubham Tripathi the Developer of Aklavya. I am a B.Tech 2nd year Cse Student at Btkit Dwarahat. I proudly contribute Aklavya a Self Awareness App to my Nation to fight against Covid-19 fearlessly.",style: TextStyle(fontSize: 17,),textAlign: TextAlign.start,),
            ),
            Divider(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 5,top: 10,bottom: 10),
              child: Text("Social Media",style: TextStyle(fontSize: 24,color: Colors.blue[900],fontWeight: FontWeight.w800)),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Card(
                    child: InkWell(
                      onTap: (){
                        launch('https://www.facebook.com/shubham.tripathi.90410');
                      },
                      child: Wrap(

                        children: <Widget>[
                          Image.asset('images/fb.png',height: 50,width: 50,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                    child: InkWell(
                      onTap: (){
                        launch('https://www.linkedin.com/in/shubham-tripathi-727424144/');
                      },
                      child: Wrap(

                        children: <Widget>[
                          ClipRRect(
                              child: (Image.asset('images/lkin.jpg',height: 50,width: 50,)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
