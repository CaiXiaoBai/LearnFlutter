import 'package:flutter/material.dart';

class ShareDataWidget extends InheritedWidget{

  ShareDataWidget({
    @required this.data,
    Widget child
  }): super(child: child);

  final int data;

  static ShareDataWidget of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.data != data;
  }
}

class TestWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _TestWidgetState();
  }
}

class _TestWidgetState extends State<TestWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("dependencies change");
  }
}

class InheriteDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _InheriteDemoPageState();
  }
}

class _InheriteDemoPageState extends State<InheriteDemoPage>{

  int count =0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("inherite page"),
      ),
      body: Center(
        child: ShareDataWidget(
          data: count,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TestWidget(),
              ),
              RaisedButton(
                child: Text("Increment"),
                onPressed: (){
                  setState(() {
                    ++count;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}