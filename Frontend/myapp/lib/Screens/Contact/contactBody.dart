// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/Components/NavBar.dart';

class ContactBody extends StatefulWidget {
  const ContactBody({Key? key}) : super(key: key);

  @override
  _ContactBodyState createState() => _ContactBodyState();
}

class _ContactBodyState extends State<ContactBody> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: Material(
                child: NavBar(),
                elevation: 5,
                shadowColor: Colors.black38,
              )),
              Column(
                children: [
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
                          Text("Contact Us", style: TextStyle(fontSize: 60.0)),
                          SizedBox(height: 17),
                          Text(
                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \nsed diam nonumy eirmod tempor invidunt ut labore et dolore magna",
                              style: TextStyle(fontSize: 20.0, height: 01.50)),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
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
                  SizedBox(
                    height: 150.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                              "For general inquiries,\n send an e-mail to\n hi@kairomeds.in",
                              style: TextStyle(
                                  fontSize: 35.0, fontWeight: FontWeight.w700)),
                        ],
                      ),
                      SizedBox(width: 450.0),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Address",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    wordSpacing: 6.0,
                                  )),
                              SizedBox(
                                width: 40.0,
                              ),
                              Text(
                                  "Cecilia Chapman\n 711-2880 Nulla St.\n Mankato Mississippi 96522\n (257) 563-7401",
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w700)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 70.0),
                  // form section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Our Team Will Help You...",
                              style: TextStyle(
                                  fontSize: 35.0, fontWeight: FontWeight.w700)),
                        ],
                      ),
                      // SizedBox(width: 150.0,),
                      Column(
                        children: [
                          Text("Contact Us",
                              style: TextStyle(
                                  fontSize: 35.0, fontWeight: FontWeight.w700)),
                          // Container(
                          //   alignment: Alignment.centerRight,
                          //   padding: EdgeInsets.only(right: 230.0, left: 230.0),
                          //   child: Form(
                          //     key: _formkey,
                          //       child: Column(
                          //     children: [
                          //       TextFormField(
                          //         validator: (value) {
                          //           if (value == null || value.isEmpty) {
                          //             return 'Please enter Your Name';
                          //           } else {
                          //             return null;
                          //           }
                          //         },
                          //       )
                          //     ],
                          //   )),
                          // )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
