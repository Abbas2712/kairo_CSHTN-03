// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/Components/NavBar.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                child: Material(
              child: NavBar(),
              elevation: 5,
              shadowColor: Colors.black38,
            )),
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
                    Text("About Us", style: TextStyle(fontSize: 60.0)),
                    SizedBox(height: 17),
                    Text(
                        "We are a group of enthusiastic individuals, \nwho worked on to do something about delivering medicinal products \nto the people who need it",
                        style: TextStyle(fontSize: 20.0,height: 01.50)),
                    SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      child: Text("Back To Home"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/");
                      },
                      style: OutlinedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15.0),
                        fixedSize: Size(170, 40),
                        primary: Colors.white,
                        onSurface: Colors.green,
                        backgroundColor: Colors.green,
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
                      "Image_1.png",
                      height: 650,
                      width: 800,
                    ),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
