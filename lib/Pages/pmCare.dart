import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class pmCare extends StatefulWidget {
  @override
  _pmCareState createState() => _pmCareState();
}

class _pmCareState extends State<pmCare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.only(top:20),
      child: Card(
        color: Colors.blueGrey[900],
        child: InkWell(
          onTap: (){
            launch('https://www.pmcares.gov.in/en/');
          },
          child: Wrap(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5),

                child:  Image.asset('images/pmc.jpg',height:340,width:410,fit: BoxFit.fill),

              ),
              ListTile(
                title: Text("Prime Minister's Care Fund",style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,),

              ),

            ],


          ),
        ),
      ),
    );
  }
}
