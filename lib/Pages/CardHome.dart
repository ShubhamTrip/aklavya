import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class CardHome extends StatefulWidget {
  @override
  _CardHomeState createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
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
            ImageUrl: 'images/corona.jpg',
            Title: 'Awareness Against Covid-19',
            url: 'https://www.cureus.com/articles/29822-covid-19-awareness-among-healthcare-students-and-professionals-in-mumbai-metropolitan-region-a-questionnaire-based-survey',
          ),
          Cards(
            ImageUrl: 'images/coro1.jpg',
            Title: 'Symptoms of Covid-19',
            url: 'https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html',
          ),
          Cards(
            ImageUrl: 'images/qz.png',
            Title: 'Play Covid-19 Quiz',
            url: "https://quiz.mygov.in/quiz/quiz-on-covid-19/",
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

