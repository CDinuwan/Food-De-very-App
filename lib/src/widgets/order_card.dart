import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: Row(
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
          ],
        ),
      ),
    );
  }
}