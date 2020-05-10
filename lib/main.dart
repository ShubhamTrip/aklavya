import 'package:flutter/material.dart';
import 'package:aklavya/Pages/MenuBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.white
    ),
    home: Horitab(),
  ));
}