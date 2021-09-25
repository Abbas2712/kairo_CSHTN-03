// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/Screens/About/About_Us.dart';
import 'package:myapp/Screens/Cart/Cart.dart';
import 'package:myapp/Screens/Contact/contact_Us.dart';
import 'package:myapp/Screens/Home/home.dart';
import 'package:myapp/Screens/Store/store.dart';
import 'package:myapp/constant.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kairo Meds',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      routes: {
        "/": (context) => Home(),
        "/about_us": (context) => About_Us(),
        "/contact_us": (context) => ContactUs(),
        "/store": (context) => Store_Page(),
        "/cart": (context) => Cart(),
      },
    );
  }
}


