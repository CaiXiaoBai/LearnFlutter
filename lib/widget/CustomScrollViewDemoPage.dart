import 'package:flutter/material.dart';

class CustomScrollViewDemoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("CUstom Scroll View"),
              background: Image.asset("images/IMG_0122.JPG", fit: BoxFit.cover,),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: new SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 4,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100*(index%8 + 1)],
                    child: new Text("Grid item $index"),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100*(index%8 + 1)],
                  child: Text("List item $index"),
                );
              },
              childCount: 50
            ),
          )
        ],
      ),
    );
  }
}