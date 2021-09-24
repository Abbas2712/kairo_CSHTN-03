// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/Screens/Contact/contactBody.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({ Key? key }) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ContactBody(),);
  }
}