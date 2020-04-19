import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  
  final textStyle=TextStyle(fontSize:40.0,fontWeight:FontWeight.bold,);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("What would",style: textStyle),
                Text("you like to eat?",style: textStyle,)
              ],
              ),
              Icon(Icons.notifications_none,size: 30.0,color: Theme.of(context).primaryColor,),
            ],  
      ),
    );
  }
}