import 'package:flutter/material.dart';
import '../pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  bool _trogleVisibility=true;
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
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _trogleVisibility=!_trogleVisibility;
            });
          } ,
          icon:_trogleVisibility ? Icon(Icons.visibility_off):Icon(Icons.visibility))
      ),
      obscureText: _trogleVisibility,
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
                SizedBox(height: 20.0,),
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
        Divider(height:20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Don't have account?",style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0)),
            SizedBox(width:10.0),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>SignUpPage()));
              },
            child:Text("SignUp",style:TextStyle(color:Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 20.0)),
            ),
          ],
        )
        ], 
      ),
      ),
    );
  }
}