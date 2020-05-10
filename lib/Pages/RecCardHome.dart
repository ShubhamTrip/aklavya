import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class RecCardHome extends StatefulWidget {
  @override
  _RecCardHomeState createState() => _RecCardHomeState();
}

class _RecCardHomeState extends State<RecCardHome> {
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
            ImageUrl: 'images/medi.jpg',
            Title: 'Meditation at Home',
            url: 'https://www.brahmakumaris.org/meditation/how-to-meditate',
          ),
          Cards(
            ImageUrl: 'images/homex.jpg',
            Title: 'Exercise at Home',
            url: 'https://www.verywellfit.com/best-ways-to-exercise-at-home-1231142',
          ),
          Cards(
            ImageUrl: 'images/yoga.jpg',
            Title: 'Yoga at Home',
            url:'https://www.wikihow.life/Do-Yoga-at-Home'
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

