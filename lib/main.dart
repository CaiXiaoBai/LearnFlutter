import 'package:flutter/material.dart';
import 'package:flutterapp/widget/ButtonDemoPage.dart';
import 'widget/TextDemoPage.dart';
import 'widget/ImageDemoPage.dart';
import 'widget/SwitchAndCheckBoxDemoPage.dart';
import 'widget/TextFieldAndFormDemoPage.dart';
import 'widget/ProgressDemoPage.dart';
import 'widget/MyDrawer.dart';
import 'widget/SingleChildScrollViewDemoPage.dart';
import 'widget/ListViewDemoPage1.dart';
import 'widget/ListViewDemoPage2.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: routers,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin  {
  int selectedIndex = 1;
  TabController tabController;
  List tabs = ["新闻","历史","图片"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var routeLists = routers.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          controller: tabController,
          tabs: tabs.map((e) => Tab(text: e,)).toList(),
        ),
      ),
      drawer: new MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text("School")),
          BottomNavigationBarItem(icon: Icon(Icons.build), title: Text("Build")),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text("Person")),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: TabBarView(
        controller: tabController,
        children: tabs.map((e){
          if(e == "新闻"){
            return Center(
              child: new ListView.builder(
                itemBuilder: (context, index) {
                  return new InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(routeLists[index]);
                    },
                    child: new Card(
                      child: new Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        child: new Text(routerName[index]),
                      ),
                    ),
                  );
                },
                itemCount: routers.length,
              ),
            );
          }else{
            return Container(
              alignment: Alignment.center,
              child: Text(e, textScaleFactor: 5),
            );
          }
        }).toList(),
      ),
    );
  }

  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
}


const routerName = [
  "Text Demo",
  "Button Demo",
  "Image Demo",
  "Switch and CheckBox Demo",
  "TextField and Form Demo",
  "Progress Demo",
  "SingleChildScrollView Demo",
  "ListViewDemoPage1 Demo",
  "ListViewDemoPage2 Demo",
];

Map<String, WidgetBuilder> routers = {
  "widget/text" : (context){
    return new TextDemoPage();
  },
  "widget/button" : (context){
    return new ButtonDemoPage();
  },
  "widget/image" : (context){
    return new ImageDemoPage();
  },
  "widget/switchandcheckbox" : (context){
    return new SwitchAndCheckBoxDemoPage();
  },
  "widget/textfieldandform" : (context){
    return new TextFieldAndFormDemoPage();
  },
  "widget/progress" : (context){
    return new ProgressDemoPage();
  },
  "widget/SingleChildScrollView" : (context){
    return new SingleChildScrollViewDemoPage();
  },
  "widget/ListViewDemoPage1" : (context){
    return new ListViewDemoPage1();
  },
  "widget/ListViewDemoPage2" : (context){
    return new ListViewDemoPage2();
  },
};
