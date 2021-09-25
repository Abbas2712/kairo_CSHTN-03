// ignore_for_file: file_names, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'dart:js';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              child: Material(
            child: NavBar(),
            elevation: 5,
            shadowColor: Colors.black38,
          )),
          SizedBox(height: 75.0),
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Text(
              "Cart",
              style: TextStyle(fontSize: 50.0),
            ),
          ),
          SizedBox(height: 75.0),
          Container(
              margin: EdgeInsets.only(left: 100.0, right: 100.0),
              child: Material(
                child: CartPage(),
                elevation: 5,
                shadowColor: Colors.black38,
              )),
        ],
      ),
    );
  }
}

Widget CartPage() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 85),
              child: Text(
                "Product",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(width: 900),
            Text(
              "SubTotal:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 45),
            Text(
              "\$70.09",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
            ),
          ],
        ),
        SizedBox(
          height: 140,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 750,
                width: 900,
                child: Scrollbar(
                  child: ListView(
                    children: [
                      CardSection(),
                      CardSection(),
                      CardSection(),
                    ],
                  ),
                )),
            SizedBox(
              width: 120,
            ),
            Column(
              children: [
                Text(
                  "Additional Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                
                // Padding(
                //   padding: const EdgeInsets.all(1500),
                //   child: TextField(
                //       // maxLength: 100,
                //       decoration: InputDecoration(
                //         border: OutlineInputBorder(
                //             borderSide:
                //                 BorderSide(color: Colors.green, width: 2.0)),
                //         focusColor: Colors.green,
                //         hintStyle: TextStyle(
                //           fontWeight: FontWeight.normal,
                //           color: Colors.grey,
                //           fontSize: 15.0,
                //         ),
                //         hintText: "Type Here..",
                //       )),
                // ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 130,
        ),
        Divider(
          height: 1,
          color: Colors.green,
          indent: 80,
          endIndent: 80,
        ),
        SizedBox(
          height: 65.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 900),
                Text(
                  "SubTotal:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 45),
                Text(
                  "\$70.09",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 850.0, top: 30),
              child: TextButton(
                child: Text("Check Out"),
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 15.0),
                  fixedSize: Size(170, 40),
                  primary: Colors.white,
                  onSurface: Colors.green,
                  backgroundColor: Colors.green,
                  side: BorderSide(color: Colors.green, width: 1.5),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10)
      ],
    ),
  );
}

Widget CardSection() {
  return Padding(
    padding: const EdgeInsets.only(left: 80, bottom: 40),
    child: Column(
      children: [
        Container(
          color: Colors.white,
          height: 320,
          width: 900,
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    "Hero_Page.jpeg",
                    height: 310,
                    width: 340,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Divider(
          height: 1,
          color: Colors.green,
        )
      ],
    ),
  );
}

// Widget ProductList() {
//   return ListView.builder(
//       itemCount: 1,
//       itemBuilder: (context, index) => Card(
//             child: ListTile(title: Text(index.toString()),),
//           ));
// }
