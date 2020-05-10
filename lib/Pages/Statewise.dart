import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Statewise extends StatefulWidget {
  @override
  _StatewiseState createState() => _StatewiseState();
}

class _StatewiseState extends State<Statewise> {

  Map countrywise;

  fetchCountryWiseData() async {
    http.Response response =
    await http.get('https://api.covid19india.org/data.json');
    setState(() {
      countrywise = json.decode(response.body);
    });
  }
  Future fetchData() async {
    fetchCountryWiseData();
    print('fetchData called');
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text('Statewise Status'),
          backgroundColor: Colors.green[900],
        ),
        body: countrywise == null?
        CircularProgressIndicator()
        :ListView.builder(
    itemCount: countrywise['statewise'].length-1,
    itemBuilder: (context,index){
    return Card(
    child: Container(

    height: 130,
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
    children: <Widget>[
    Container(
    width: 200,
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Text(
    countrywise['statewise'][index+1]['state'],
    style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Righteous-Regular',fontSize: 17),
    ),

    ],
    ),
    ),
    Expanded(
    child: Container(
    child: Column(
    children: <Widget>[
    Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Text(
      'CONFIRMED: ' +
      countrywise['statewise'][index+1]['confirmed'].toString(),
      style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.red[900]),
      ),
    ),
    Text(
    'ACTIVE: ' +
    countrywise['statewise'][index+1]['active'].toString(),
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.blue[900]),
    ),
    Text(
    'RECOVERED: ' +
    countrywise['statewise'][index+1]['recovered'].toString(),
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.green[900]),
    ),
    Text(
    'DEATHS: ' +
    countrywise['statewise'][index+1]['deaths'].toString(),
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color:  Theme.of(context).brightness==Brightness.dark?Colors.grey[100]:Colors.grey[900]),
    ),
    ],
    ),
    ))
    ],
    ),
    ),
      color: Colors.blueGrey[300],
    );
    })
    )
    );

}
}
