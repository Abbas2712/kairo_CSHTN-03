// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/Screens/About/aboutBody.dart';

class About_Us extends StatefulWidget {
  const About_Us({ Key? key }) : super(key: key);

  @override
  State<About_Us> createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AboutBody(),
    );
  }
}