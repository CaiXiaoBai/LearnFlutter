import 'package:flutter/material.dart';

class ListViewDemoPage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget line1 = Divider(color: Colors.red,);
    Widget line2 = Divider(color: Colors.green,);
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView1"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemExtent: 50,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(title: Text("$index"),);
                }
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index){
                return ListTile(title: Text("$index"),);
              },
              separatorBuilder: (BuildContext context, int index){
                return index %2 == 0 ? line1 : line2;
              },
            ),
          )
        ],
      )

    );
  }
}