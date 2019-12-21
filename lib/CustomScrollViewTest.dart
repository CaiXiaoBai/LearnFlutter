import 'package:flutter/material.dart';

class CustomScrollViewTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('sliver app bar'),
          floating: true,
          flexibleSpace: Image.asset("assets/timg.gif", fit: BoxFit.cover,),
          expandedHeight: 300,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('title $index'),),
            childCount: 100
          ),
        ),
      ],
    );
  }
}