import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool _trogleVisibility=true;
  bool _trogleConfirmVisibility=true;
  Widget _buildEmailTextField()
  {
    return TextFormField(
      decoration: InputDecoration(
        hintText:"Email",
        hintStyle: TextStyle(
          color:Colors.black,
          fontSize: 15.0,
        ),
      ),
    );
  }
  Widget _buildUsernameTextField()
  {
    return TextFormField(
      decoration: InputDecoration(
        hintText:"Username",
        hintStyle: TextStyle(
          color:Colors.black,
          fontSize: 15.0,
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
          fontSize: 15.0,
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
    Widget _buildConfirmPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText:"Confirm Password",
        hintStyle: TextStyle(
          color:Colors.black,
          fontSize: 15.0,
        ),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _trogleConfirmVisibility=!_trogleConfirmVisibility;
            });
          } ,
          icon:_trogleConfirmVisibility ? Icon(Icons.visibility_off):Icon(Icons.visibility))
      ),
      obscureText: _trogleConfirmVisibility,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:Padding(
        padding:EdgeInsets.symmetric(horizontal:10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Sign Up",style:TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),
        ), 
        SizedBox(height:100.0),
        SizedBox(height:10.0),
        Card(
          elevation: 5.0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
              child: Column(
              children:<Widget>[
                _buildUsernameTextField(),
                SizedBox(height: 20.0,),
                _buildEmailTextField(),
                SizedBox(height: 20.0,),
                _buildPasswordTextField(),
                SizedBox(height: 20.0,),
                _buildConfirmPasswordTextField(),
              ],
            ),
          )
        ),
        SizedBox(height:50.0),
        Container(
          height:50.0,
          decoration: BoxDecoration(
            color:Colors.blue,
            borderRadius:BorderRadius.circular(25.0)
          ),
          child: Center(child: Text("Sign Up",style:TextStyle(color:Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),),
        ),
        
        Divider(height:20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Already have an account?",style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0)),
            SizedBox(width:10.0),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>SignInPage()));
              },
            child:Text("Sign In",style:TextStyle(color:Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 18.0)),
            ),
          ],
        )
        ], 
      ),
      ),
    );
  }
}