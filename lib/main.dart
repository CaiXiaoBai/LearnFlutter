import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "aaaaaaaa",
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    writeContent("hello world");
//    readContent().then((value)=>print(value));
    return Scaffold(
      appBar: new AppBar(
        title:
          Center(
            child: Text('demo',
            ),
          )
      ),
      body:
        Column(
          children: <Widget>[
            NormalText(),
            FadeInImageTest(),
            FloatingActionButton(onPressed: ()=>print('floating action button pressed'),),
            FlatButton(onPressed: ()=>print('flat button pressed'),),
            RaisedButton(onPressed: ()=>print('raised button pressed'),)
          ],
        )
    );
  }
}

class NormalText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
          '接下来，我们以一个具体的例子来看看 Text 控件的使用方法。如下所示，我在代码中定义了一段居中布局、20 号红色粗体展示样式的字符串：',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
        );
  }
}

class RichText extends StatelessWidget{
  TextStyle red = TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red);
  TextStyle black = TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(
        TextSpan(
            children: <TextSpan>[
              TextSpan(text: "文本是视图系统中的常见控件，用来显示一段特定样式的字符串，就比如。", style: black),
              TextSpan(text: "Android", style: red),
              TextSpan(text: "里的TextView，或是iOS中的UILabel。", style: black),
            ]
        )
    );
  }
}

class FadeInImageTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FadeInImage.assetNetwork(
        placeholder: 'assets/timg.gif',
//        image: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576750479693&di=73c11a28fc0185ba8f4db2d2858f0ed8&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F00%2F90%2F47%2F9256efcbf458c23.jpg',
        image: "https://xxx.jpg",
      fit: BoxFit.cover,
        width: 200,
        height: 200,
    );
  }
}


