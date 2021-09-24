// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/Components/NavBar.dart';
import 'package:myapp/Screens/Store/store.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({ Key? key }) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}


class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
                child: Material(
              child: NavBar(),
              elevation: 5,
              shadowColor: Colors.black38,
            )),
            // SizedBox(
            //   height: 300,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 210,
                      width: 80,
                    ),
                    Text("Kairo Meds", style: TextStyle(fontSize: 60.0)),
                    SizedBox(height: 17),
                    Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \nsed diam nonumy eirmod tempor invidunt ut labore et \ndolore magna",
                        style: TextStyle(fontSize: 20.0,height: 01.50)),
                    SizedBox(
                      height: 50,
                    ),
                    OutlinedButton(
                      child: Text("Upload Prescription"),
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15.0),
                        fixedSize: Size(170, 40),
                        primary: Colors.black,
                        onSurface: Colors.green,
                        side: BorderSide(color: Colors.green, width: 1.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 70.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "Image_2.png",
                      height: 650,
                      width: 800,
                    ),
                  ],
                )
              ],
            ),
            Store_Page(),
          ],
        ),
      ),
    );
  }
}
