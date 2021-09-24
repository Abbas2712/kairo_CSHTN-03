// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      height: 450.0,
      width: 320.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "Hero_page.jpeg",
            height: 250.0,
            width: 250.0,
          ),
          SizedBox(height: 40.0),
          Text(
            "ABC Medicines",
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(height: 20.0),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "\$1.09",
              style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 170.0),
            Image.asset(
              "Icon-awesome-cart-plus.png",
              height: 25.0,
              width: 25.0,
            ),
          ]),
          SizedBox(height: 20.0,),
          Image.asset("Rating.png",height: 20.0,),

        ],
      ),
    );
  }
}
