import 'package:aklavya/Pages/CardHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text("Topics",style:TextStyle(color: Colors.white,fontSize: 20)),
        ),
        CardHome(),
        Divider(color: Colors.grey,height: 40,)

      ],
    );
  }
}
