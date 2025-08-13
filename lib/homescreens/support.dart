// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:vpn_ui/screens/bottomnavbar.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavBar(initialIndex: 3),
              ),
            );
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "SUPPORT",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          PaymentCard("Restore Purchase"),
          PaymentCard("Profile/Installation"),
          PaymentCard("Can't Connect"),
          PaymentCard("Live Chat"),
          PaymentCard("Email Support"),
        ],
      ),
    );
  }

  Padding PaymentCard(titleText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        elevation: 0,
        child: ListTile(
          // leading: Icon(Icons.add, size: 30, color: Colors.black),
          title: Text(
            titleText,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 23,
              color: Colors.black,
            ),
          ),trailing: Icon(Icons.arrow_forward_ios),
        ),
        color: const Color.fromARGB(255, 245, 245, 245),
      ),
    );
  }
}
