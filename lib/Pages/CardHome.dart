import 'package:flutter/material.dart';
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
            ImageUrl: 'images/Coro.png',
            Title: 'Awareness Against Covid-19',
          ),
          Cards(
            ImageUrl: 'images/coro1.jpg',
            Title: 'Symptoms of Covid-19',
          ),
          Cards(
            ImageUrl: 'images/Stayhea.png',
            Title: 'Eating Healthy',
          ),
        ],
      ),
    );
  }
}
class Cards extends StatelessWidget {
  final String ImageUrl;
  final String Title;

  const Cards({this.ImageUrl, this.Title});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[850],
      width: 300.0,
      margin: EdgeInsets.only(right:2),


      child: Card(
        color: Colors.grey[900],
        child: InkWell(
          onTap: (){},
          child: Wrap(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),

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

