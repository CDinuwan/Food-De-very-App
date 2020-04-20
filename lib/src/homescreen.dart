import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/widgets/food_category.dart';
import 'widgets/home_top_info.dart';
import 'widgets/food_card.dart';
import 'widgets/search_field.dart';
import 'widgets/bought_foods.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState()=>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{

  
@override
Widget build(BuildContext context)
{
  return Scaffold(
    body: ListView(
      padding: EdgeInsets.only(top:50.0,left: 20.0,right: 20.0),
      children:<Widget>
      [
        HomeTopInfo(),
        FoodCategory(),
        SizedBox(height: 20.0),
        SearchField(),
        SizedBox(height:20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Frequently Bought foods",
            style: TextStyle(
              fontSize:18.0,
              fontWeight:FontWeight.bold,
            ),
            ),
            GestureDetector(
              onTap: (){},
              child: Text("View All",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
        Container(
            child: BoughtFoods(),
        ),
        ],
    ),
  );
      
}
}