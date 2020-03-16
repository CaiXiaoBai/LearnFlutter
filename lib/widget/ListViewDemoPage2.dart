import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class ListViewDemoPage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ListViewDemoPage2State();
  }
}

class _ListViewDemoPage2State extends State<ListViewDemoPage2>{
  static const loadingTag = "##loading##";
  var _words = <String>[loadingTag];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewDemoPage2"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(title: Text("Random Words"),),
          Expanded(
            child: ListView.separated(
              itemCount: _words.length,
              itemBuilder: (context, index){
                if(_words[index] == loadingTag){
                  if(_words.length - 1 < 100){
                    _retrieveData();
                    return Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(strokeWidth: 2,),
                      ),
                    );
                  }else{
                    return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(15),
                      child: Text("no more", style: TextStyle(color: Colors.grey),),
                    );
                  }
                }
                return ListTile(title: Text(_words[index]),);
              },
              separatorBuilder: (context, index) => Divider(height: 0.0),
            ),
          )
        ],
      )
    );
  }

  void _retrieveData(){
    Future.delayed(Duration(seconds: 2)).then((e){
      _words.insertAll(_words.length - 1, generateWordPairs().take(20).map((f) => f.asPascalCase).toList());
      setState(() {

      });
    });
  }
}