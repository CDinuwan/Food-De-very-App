import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Container(
              height: 75.0,
              width: 45.0,
              decoration: BoxDecoration(
                border:Border.all(width:2.0,color:Colors.black87),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children:<Widget>[
                InkWell(
                  onTap: (){},
                  child: Icon(Icons.keyboard_arrow_up,color: Colors.black87,)),
                Text("0",style: TextStyle(fontSize: 18.0,color: Colors.black87),),
                InkWell(
                  onTap: (){},
                  child: Icon(Icons.keyboard_arrow_down,color: Colors.black87,)),
                ],
              ),
            ),
            SizedBox(width: 20.0,),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image:AssetImage(
                    "asserts/friedricem.jpg"
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(color: Colors.black87,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 0.5)
                  )
                ]
              ),
            ),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Fried Rice",style: TextStyle(
                  fontSize:18.0,fontWeight:FontWeight.bold
                ),),
                SizedBox(height: 5.0,),
                Text("3.0",style: TextStyle(color: Colors.orangeAccent,fontSize: 16.0),),
                SizedBox(height:5.0),
                Container(
                  height: 25.0,
                  width: 120.0,
                  child: ListView(
                    children:<Widget>[
                      Row(
                        children:<Widget>[
                          Text("Fried Rice",style: TextStyle(color: Colors.grey),),
                          SizedBox(width:5.0,),
                          Text("x",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold),),
                        ]
                      ),
                    ]
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}