import 'package:flutter/material.dart';

class ScrollControllerDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ScrollControllerDemoPageState();
  }
}

class _ScrollControllerDemoPageState extends State<ScrollControllerDemoPage>{

  ScrollController _controller = new ScrollController();
  bool _ShowGoTopButton = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener((){
      print(_controller.offset);
      if(_controller.offset < 1000 && _ShowGoTopButton){
        setState(() {
          _ShowGoTopButton = false;
        });
      }else if(_controller.offset >= 1000 && !_ShowGoTopButton){
        setState(() {
          _ShowGoTopButton = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll Controller"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 100,
          itemExtent: 50,
          controller: _controller,
          itemBuilder: (context, index){
            return ListTile(title: Text("$index"),);
          }
        ),
      ),
      floatingActionButton: !_ShowGoTopButton?null:FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          _controller.animateTo(0, duration: Duration(microseconds: 200), curve: Curves.ease);
        },
      ),
    );
  }
}