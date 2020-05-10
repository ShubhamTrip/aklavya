import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class IniCardHome extends StatefulWidget {
  @override
  _IniCardHomeState createState() => _IniCardHomeState();
}

class _IniCardHomeState extends State<IniCardHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215.0,
      margin: EdgeInsets.only(top:20),
      color: Colors.grey[850],
      child: ListView(

        scrollDirection: Axis.horizontal,

        children: <Widget>[

          Cards(
            ImageUrl: 'images/check.jpg',
            Title: 'Covid-19 Self Assessment',
            url: 'https://public.ehealthsask.ca/sites/COVID-19/',
          ),
          Cards(
            ImageUrl: 'images/minis.jpg',
            Title: 'Ministry of Ayush',
            url: 'https://www.ayush.gov.in/',
          ),
          Cards(
            ImageUrl: 'images/news.jpg',
            Title: 'Covid-19  India',
            url: 'https://www.mohfw.gov.in/',
          ),
        ],
      ),
    );
  }
}
class Cards extends StatelessWidget {
  final String ImageUrl;
  final String Title;
  final String url;

  const Cards({this.ImageUrl, this.Title, this.url});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[850],
      width: 300.0,
      margin: EdgeInsets.only(right:2),


      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Colors.grey[900],
        child: InkWell(
          onTap: (){
            launch(url);
          },
          child: Wrap(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),

                child:  Image.asset(ImageUrl,height:152,width:300,fit: BoxFit.fill),

              ),
              ListTile(
                title: Text(Title,style: TextStyle(color: Colors.grey,),overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,),

              ),

            ],


          ),
        ),


      ),


    );
  }
}

