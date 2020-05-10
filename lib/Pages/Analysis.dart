import 'dart:convert';
import 'package:aklavya/Pages/Countrywise.dart';
import 'package:aklavya/Pages/Statewise.dart';
import 'package:aklavya/Panel/mostaffected.dart';
import 'package:aklavya/Panel/worldwidepanel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Analysis extends StatefulWidget {
  @override
  _AnalysisState createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {
  Map worldData;

  fetchWorldWideData() async {
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData = json.decode(response.body);
    });
  }

  List countryData;

  fetchCountryData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  List countrywise;

  fetchCountryWiseData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries');
    setState(() {
      countrywise = json.decode(response.body);
    });
  }

  Future fetchData() async {
    fetchWorldWideData();
    fetchCountryData();
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
    return ListView(
      children: <Widget>[
        RefreshIndicator(
          onRefresh: fetchData,
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Worldwide Status',
                      style: TextStyle(
                          fontFamily: "Righteous-Regular",
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              worldData == null
                  ? CircularProgressIndicator()
                  : worldwidepanel(
                      worldData: worldData,
                    ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                child: Text(
                  'Most affected Countries',
                  style: TextStyle(
                      fontFamily: "Righteous-Regular",
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              countryData == null
                  ? Container()
                  : mostaffected(
                      countryData: countryData,
                    ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Container(
                  color: Colors.blueGrey[800],
                  child: ListTile(
                    title: Text("CountryWise Status",style: TextStyle(color: Colors.white70),),
                    trailing: IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white70,),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Countrywise()),
                        );
                      },),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Container(
                      height: 670,
                      width: 400,
                      color: Colors.blueGrey,
                      child: countrywise == null
                          ? Center(
                        child: CircularProgressIndicator(),
                      )
                          : (Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "India",
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Righteous-Regular'),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Image.network(
                            countrywise[93]['countryInfo']['flag'],
                            height: 100,
                            width: 200,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            title: Text(
                              "Confirmed Cases",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.red[600],
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              countrywise[93]['cases'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Todays Cases",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.yellowAccent[700],
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              countrywise[93]['todayCases'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Recovered",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.green[800],
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              countrywise[93]['recovered'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Active Cases",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              countrywise[93]['active'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Total Deaths",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              countrywise[93]['deaths'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              color: Colors.blueGrey[900],
                              child: ListTile(
                                title: Text("Statewise Status",style: TextStyle(color: Colors.white70),),
                                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white70,),
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Statewise()),
                                    );
                                  },),
                              ),

                            ),
                          )
                        ],
                      )),
                    ),
                  )),
              SizedBox(
                height: 50,
              )

            ],
          )),
        )
      ],
    );
  }
}
