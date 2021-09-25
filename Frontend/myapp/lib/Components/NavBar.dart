// ignore_for_file: file_names, prefer_const_constructors, prefer_final_fields

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatefulWidget {
  bool _isLogin = false;

  @override
  State<NavBar> createState() => _NavBarState();
}

@override
void initState() {
  // super.initState();
  // _checkstatus();
}

Widget _popup() {
  return PopupMenuButton<int>(
    padding: EdgeInsets.all(0.0),
    itemBuilder: (context) => [
      PopupMenuItem(
        value: 1,
        child: Container(
          width: 130,
          height: 50.0,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 05.0, top: 0.5),
                child: Text("My Profile"),
              ),
            ],
          ),
        ),
      ),
      PopupMenuItem(
        value: 2,
        child: Container(
          width: 130,
          height: 50.0,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 05.0, top: 0.0),
                child: Text("Favorite"),
              ),
            ],
          ),
        ),
      ),
    ],
    child: Padding(
      padding: EdgeInsets.only(top: 01.0),
      child: Icon(
        Icons.more_vert_outlined,
        color: Colors.black,
        size: 28.0,
      ),
    ),
  );
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //WebIcon
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/");
          },
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            padding: EdgeInsets.only(left: 100.0, right: 5.0),
            child: Container(
              child: Image.asset(
                "kairo_Meds.png",
                height: 100,
                width: 100,
              ),
            ),
          ),
        ),
        // Menu Items
        Row(
          children: [
            
            //Home
            InkWell(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 25.0, right: 25.0),
                height: 80.0,
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),

            //Store
            InkWell(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                // Navigator.pushNamed(context, "/store");
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 25.0, right: 25.0),
                height: 80.0,
                child: Text(
                  "Store",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),

            //Contact_Us
            InkWell(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.pushNamed(context, "/contact_us");
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 25.0, right: 25.0),
                height: 80.0,
                child: Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),

            //About_Us
            InkWell(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.pushNamed(context, "/about_us");
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 25.0, right: 25.0),
                height: 80.0,
                child: Text(
                  "About Us",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
        // Profile
        // _isLogin ?
        // Row(
        //   children: [
        //     Container(
        //         padding: EdgeInsets.only(right: 10),
        //         alignment: Alignment.center,
        //         child: OutlinedButton(
        //           onPressed: () {},
        //           child: Text("Sign In"),
        //           style: OutlinedButton.styleFrom(
        //             textStyle: TextStyle(fontSize: 15.0),
        //             fixedSize: Size(100, 40),
        //             primary: Colors.green[500],
        //             side: BorderSide(color: Colors.green, width: 2.0),
        //           ),
        //         )),
        //     Container(
        //       padding: EdgeInsets.only(right: 100),
        //       alignment: Alignment.center,
        //       child: TextButton(
        //         onPressed: () {},
        //         child: Text("Sign Up"),
        //         style: TextButton.styleFrom(
        //           textStyle: TextStyle(fontSize: 15.0),
        //           primary: Colors.white,
        //           fixedSize: Size(100, 40),
        //           // onSurface: Colors.green[500],
        //           backgroundColor: Colors.green[500],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        // :
        Row(
          children: [
            Image.asset("Icon-awesome-user.png", height: 20.0, width: 20.0),
            SizedBox(
              width: 12.0,
            ),
            Text(
              "Hello Alex",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 12.0,
            ),
            Image.asset("Icon-material-arrow_drop_down_circle.png",
                height: 20.0, width: 20.0),
            SizedBox(
              width: 50.0,
            )
          ],
        ),
      ],
    );
  }
}
