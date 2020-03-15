import 'package:flutter/material.dart';

class TextFieldAndFormDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _TextFieldAndFormState();
  }
}

class _TextFieldAndFormState extends State<TextFieldAndFormDemoPage> {
  FocusNode node1 = new FocusNode();
  FocusNode node2 = new FocusNode();
  TextEditingController uNameController = new TextEditingController();
  TextEditingController pwdNameController = new TextEditingController();
  GlobalKey formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title : Text("TextField and form"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Form(
          key: formKey,
          autovalidate: true,
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                controller: uNameController,
                decoration: InputDecoration(
                  labelText: "User Name",
                  hintText: "User name or Email",
                  icon: Icon(Icons.person)
                ),
                validator: (v){
                  return v.trim().length > 0 ? null:"User name is empty";
                }
              ),
              TextFormField(
                controller: pwdNameController,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Your password",
                  icon: Icon(Icons.lock)
                ),
                obscureText: true,
                validator: (v) {
                  return v.trim().length > 5 ? null : "Password is short 5";
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15),
                        child: Text("Login"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: (){
                          if((formKey.currentState as FormState).validate()){
                            print("Login success");
                          }
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}