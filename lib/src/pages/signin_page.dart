import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget _buildEmailTextField()
  {
    return TextFormField(
      decoration: InputDecoration(
        hintText:"Your email or username",
        hintStyle: TextStyle(
          color:Colors.black,
          fontSize: 10.0,
        ),
      ),
    );
  }
  Widget _buildPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText:"Password",
        hintStyle: TextStyle(
          color:Colors.black,
          fontSize: 10.0,
        ),
      ),
    );
  }
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
        SizedBox(height:100.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
          Text("Forgotten Password?",style: TextStyle(fontSize:18.0,color:Colors.blueAccent,fontWeight:FontWeight.bold),),
        ],),
        SizedBox(height:10.0),
        Card(
          elevation: 5.0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
              child: Column(
              children:<Widget>[
                _buildEmailTextField(),
                _buildPasswordTextField(),
              ],
            ),
          )
        ),
        SizedBox(height:20.0),
        Container(
          height:50.0,
          decoration: BoxDecoration(
            color:Colors.blue,
            borderRadius:BorderRadius.circular(25.0)
          ),
          child: Center(child: Text("Sign In",style:TextStyle(color:Colors.white,fontSize: 10.0,fontWeight: FontWeight.bold)),),
        ),
        Divider(),
        ], 
      ),
      ),
    );
  }
}