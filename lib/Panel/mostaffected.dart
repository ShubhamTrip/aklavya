import 'package:flutter/material.dart';
class mostaffected extends StatelessWidget {
  final List countryData;

  const mostaffected({Key key, this.countryData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: <Widget>[Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.network(
                      countryData[index]['countryInfo']['flag'],
                      height: 40,
                      width: 60,
                      fit: BoxFit.fill,

                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Text(
                        countryData[index]['country'],
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white54),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: ListTile(
                      title: Text("Deaths",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.red),),
                      subtitle: Text(
                        countryData[index]['deaths'].toString(),
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.white)
                      ),
                    )
                  ),

                ],
              ),
                Padding(
                  padding: const EdgeInsets.only(top:25),
                  child: Divider(color: Colors.grey,thickness: 0.3,),
                )
              ]
            ),

          );
        },
        itemCount: 5,
      ),
    );
  }
}
