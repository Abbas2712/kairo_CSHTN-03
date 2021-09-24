// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:myapp/Components/product.dart';

class Store_Page extends StatefulWidget {
  const Store_Page({Key? key}) : super(key: key);

  @override
  _Store_PageState createState() => _Store_PageState();
}

Widget Products() {
  return Container(
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductCard(),
              SizedBox(width: 20),
              ProductCard(),
              SizedBox(width: 20),
              ProductCard(),
              SizedBox(width: 20),
              ProductCard()
            ],
          ),

          SizedBox(height: 30 ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductCard(),
              SizedBox(width: 20),
              ProductCard(),
              SizedBox(width: 20),
              ProductCard(),
              SizedBox(width: 20),
              ProductCard()
            ],
          )
        ],
      ));
}

Widget Search_Bar() {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(right: 230.0, left: 230.0),
    // ignore: prefer_const_constructors
    child: TextField(
      cursorColor: Colors.green,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        // ignore: prefer_const_constructors
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 10.0, bottom: 02.0),
          // ignore: prefer_const_constructors
          child: Icon(
            FeatherIcons.search,
            color: Colors.black,
            size: 02.0,
          ),
        ),
        filled: true,
        focusColor: Colors.green,

        // ignore: prefer_const_constructors
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2.0)),
        fillColor: Colors.white,
        contentPadding: EdgeInsets.only(left: 25.0, top: 30.0),
        // ignore: prefer_const_constructors
        border: OutlineInputBorder(
            // ignore: prefer_const_constructors
            borderSide: BorderSide(color: Colors.green, width: 2.0)),
        hintStyle: TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.grey,
          fontSize: 15.0,
        ),
        hintText: "Search Your Medicine Here !!",
      ),
      style: TextStyle(fontSize: 16.0, color: Colors.black),
    ),
  );
}

class _Store_PageState extends State<Store_Page> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 200.0,
        ),
        Text(
          "Store",
          style: TextStyle(fontSize: 90.0),
        ),
        SizedBox(height: 51.0),
        Search_Bar(),
        SizedBox(height: 50.0),
        Products(),
      ],
    );
  }
}
