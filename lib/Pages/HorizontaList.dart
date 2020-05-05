import 'package:flutter/material.dart';
class HorizontaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(

        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListTile(
              title: IconButton(icon: Icon(Icons.home),onPressed: (){}),
              subtitle: Text("Home",textAlign: TextAlign.center,),
            ),

          ),
        Expanded(
          flex: 1,
          child: ListTile(
            title: IconButton(icon: Icon(Icons.create),onPressed: (){}),
            subtitle: Text("Add ",textAlign: TextAlign.center),
          ),
        ),
          Expanded(
            flex: 1,
            child: ListTile(
              title: IconButton(icon: Icon(Icons.video_library),onPressed: (){}),
              subtitle: Text("Media",textAlign: TextAlign.center),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListTile(
              title: IconButton(icon: Icon(Icons.notifications),onPressed: (){}),
              subtitle: Text("Notifications",textAlign: TextAlign.center),
            ),
          )
          ,


          ],
      )

    );
  }
}
