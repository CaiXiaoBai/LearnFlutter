import 'package:flutter/material.dart';

class FutureDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _FutureDemoPageState();
  }
}

class _FutureDemoPageState extends State<FutureDemoPage>{

  Future<String> getData() async {
    return Future.delayed(Duration(milliseconds: 500), () => "BALALALALALLLA");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Future demo"),),
      body: Center(
        child: FutureBuilder<String>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              if(snapshot.hasError){
                return Text(snapshot.error);
              }else{
                return Text(snapshot.data);
              }
            }else{
              return CircularProgressIndicator();
            }
          }),
      ),
    );
  }
}