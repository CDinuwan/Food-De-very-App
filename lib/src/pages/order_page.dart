import 'package:flutter/material.dart';

import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget
{
  @override
  _OrderPageState createState()=>_OrderPageState();
}
class _OrderPageState extends State<OrderPage>
{@override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        OrderCard(),
      ],
    );
  }
}