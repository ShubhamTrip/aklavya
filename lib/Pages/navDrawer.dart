import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'About.dart';
import 'Statewise.dart';
class navDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text("Aklavya",style: TextStyle(fontFamily: 'Righteous-Regular',fontSize: 20),),
        accountEmail: Text("Awareness with Accuracy",style: TextStyle(color: Colors.white70),),
        arrowColor: Colors.black54,
        currentAccountPicture: GestureDetector(
          child: CircleAvatar(
            backgroundColor: Colors.green[900],
            child: Image.asset('images/coroico.jpg',height: 60,width: 60,),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
        ),
      ),
      InkWell(
        onTap: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Statewise()),
        );},
        child: ListTile(
          title: Text('States Live'),
          leading: Icon(
            Icons.trending_up,
            color: Colors.blueGrey,
          ),
        ),
      ),
      InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => About()));
        },
        child: ListTile(
          title: Text('About'),
          leading: Icon(
            Icons.help_outline,
            color: Colors.blueGrey,
          ),
        ),
      ),
      InkWell(
        onTap: () {
          launch('https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf');
        },
        child: ListTile(
          title: Text('Helplines'),
          leading: Icon(
            Icons.phone,
            color: Colors.blueGrey,
          ),
        ),
      ),
      Divider(height: 10,),
      Padding(
        padding: const EdgeInsets.only(left: 15,top: 10),
        child: Text("Contact Us",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.blueGrey[900]),),
      ),
      Divider(height: 30,),
      InkWell(
        onTap: () {
          launch("https://www.linkedin.com/in/shubham-tripathi-727424144/");
        },
        child: ListTile(
          title: Text('LinkedIn'),
          leading: Image.asset('images/lkin.jpg',height: 30,width: 30,)
          ),
        ),

      InkWell(
        onTap: () {
          launch("https://www.facebook.com/shubham.tripathi.90410");
        },
        child: ListTile(
            title: Text('Facebook'),
            leading: Image.asset('images/fb.png',height: 30,width: 30,)
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16,top: 20,bottom: 20),
        child: Text("Write us on",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54)),
      ),
      InkWell(
        onTap: () {
          launch("mailto:shubhamtrip18@gmail.com");
        },
        child: ListTile(
            title: Text('Shubhamtrip18@gmail.com',style: TextStyle(color: Colors.blue[900]),),

        ),
      ),


    ]);
  }
}
