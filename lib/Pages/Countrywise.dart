import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Countrywise extends StatefulWidget {
  @override
  _CountrywiseState createState() => _CountrywiseState();
}

class _CountrywiseState extends State<Countrywise> {

  List countrywise;

  fetchCountryWiseData() async {
    http.Response response =
    await http.get('https://corona.lmao.ninja/v2/countries');
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
              title:Text('Countrywise Status'),
              backgroundColor: Colors.green[900],
            ),
            body: countrywise == null?
            CircularProgressIndicator()
                :ListView.builder(
              itemBuilder: (context, index) {
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
                                countrywise[index]['country'],
                                style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Righteous-Regular',fontSize: 16),
                              ),
                              Image.network(
                                countrywise[index]['countryInfo']['flag'],
                                height: 50,
                                width: 60,
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
                                          countrywise[index]['cases'].toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red[900]),
                                    ),
                                  ),
                                  Text(
                                    'ACTIVE: ' +
                                        countrywise[index]['active'].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue[900]),
                                  ),
                                  Text(
                                    'RECOVERED: ' +
                                        countrywise[index]['recovered'].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[900]),
                                  ),
                                  Text(
                                    'DEATHS: ' +
                                        countrywise[index]['deaths'].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).brightness==Brightness.dark?Colors.grey[100]:Colors.grey[900]),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  color: Colors.blueGrey[300],
                );
              },
            )
        )
    );

  }
}
