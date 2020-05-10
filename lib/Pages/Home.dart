import 'package:aklavya/Pages/CardHome.dart';
import 'package:aklavya/Pages/IniCardHome.dart';
import 'package:aklavya/Pages/RecCardHome.dart';
import 'package:aklavya/Pages/pmCare.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text("Stay Aware",style:TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Righteous-Regular')),
        ),
        CardHome(),
        Divider(color: Colors.grey,height: 40,thickness: 0.3,),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text("Lets Explore",style:TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Righteous-Regular')),
        ),
        IniCardHome(),
        Divider(color: Colors.grey,height: 40,thickness: 0.3,),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text("Wholesome Fitness",style:TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Righteous-Regular')),
        ),
        RecCardHome(),
        Divider(color: Colors.grey,height: 40,thickness: 0.3,),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text("Donate for Humanity",style:TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Righteous-Regular')),
        ),
        pmCare(),
        SizedBox(
          height: 50,
        )




      ],
    );
  }
}
