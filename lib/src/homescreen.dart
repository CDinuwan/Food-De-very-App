import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState()=>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{

  final textStyle=TextStyle(fontSize:40.0,fontWeight:FontWeight.bold,);
@override
Widget build(BuildContext context)
{
  return Scaffold(
    body: ListView(
      padding: EdgeInsets.only(top:50.0,left: 20.0,right: 20.0),
      children:<Widget>
      [
        Row
        (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("What would",style: textStyle),
              Text("you like to eat?",style: textStyle,)
            ]
            ),
            Icon(Icons.notifications_none,size: 30.0,color: Theme.of(context).primaryColor,),
          ],
        )
      ]
    ),
  );
}
}