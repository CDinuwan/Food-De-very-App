import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding:EdgeInsets.symmetric(horizontal:10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Sign In",style:TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),
        ), 
        Row(children: <Widget>[
          Text("Forgotten Password  ?")
        ],),
          ], 
      ),
      ),
    );
  }
}