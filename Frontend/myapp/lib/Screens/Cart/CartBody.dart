// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/Components/NavBar.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
                child: Material(
              child: NavBar(),
              elevation: 5,
              shadowColor: Colors.black38,
            )),
        SizedBox(height: 30.0 ),
        Text("Cart",style: TextStyle(fontSize: 50.0),)

      ],
    ));
  }
}
