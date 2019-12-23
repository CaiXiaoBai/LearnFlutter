import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //normal listview
//    return ListView(
//      children: <Widget>[
//        ListTile(leading: Icon(Icons.access_alarm), title: Text('alarm'),),
//        ListTile(leading: Icon(Icons.map), title: Text('map'),),
//        ListTile(leading: Icon(Icons.print), title: Text('print'),)
//      ],
//    );
  
  
//      return ListView(
//        scrollDirection: Axis.horizontal,
//        itemExtent: 140,
//        children: <Widget>[
//          Container(color: Colors.black,),
//          Container(color: Colors.red,),
//          Container(color: Colors.green,),
//          Container(color: Colors.blue,),
//          Container(color: Colors.pink,),
//          Container(color: Colors.yellow,),
//        ],
//      );
//    return ListView.separated(
//        itemBuilder: (BuildContext context, int index)=>ListTile(title: Text('title $index'),),
//        separatorBuilder: (BuildContext context, int index)=> index%2==0?Divider(color: Colors.red,):Divider(color: Colors.green,),
//        itemCount: 100
//    );
  
        return ListView.builder(
            itemExtent: 50.0,
            itemCount: 100,
            itemBuilder: (BuildContext context, int index)=>ListTile(title: Text("Title $index")),
        );
  }
}