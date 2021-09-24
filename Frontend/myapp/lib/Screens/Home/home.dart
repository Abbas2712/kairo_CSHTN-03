import 'package:flutter/material.dart';
import 'package:myapp/Screens/Home/homeBody.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: HomeBody(),
    );
  }
}
