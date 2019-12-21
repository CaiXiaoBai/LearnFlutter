import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        itemBuilder: (BuildContext context, int index)=>ListTile(title: Text('title $index'),),
        separatorBuilder: (BuildContext context, int index)=> index%2==0?Divider(color: Colors.red,):Divider(color: Colors.green,),
        itemCount: 100
    );
  }
}