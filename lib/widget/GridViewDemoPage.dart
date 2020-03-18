import 'package:flutter/material.dart';

class GridViewDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _GridViewDemoPage();
  }
}

class _GridViewDemoPage extends State<GridViewDemoPage>{

  List<IconData> _icons = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _RetrieveIcons();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1
        ),
        itemCount: _icons.length,
        itemBuilder: (context, index){
          if(index == _icons.length - 1 && _icons.length < 200){
            _RetrieveIcons();
          }
          return Icon(_icons[index]);
        }
      ),
    );
  }

  void _RetrieveIcons(){
    Future.delayed(Duration(microseconds: 200)).then((e){
      setState(() {
        _icons.addAll([
          Icons.ac_unit,
          Icons.airport_shuttle,
          Icons.all_inclusive,
          Icons.beach_access, Icons.cake,
          Icons.free_breakfast
        ]);
      });
    });
  }
}