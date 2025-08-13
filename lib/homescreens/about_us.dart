// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:vpn_ui/screens/bottomnavbar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
          "ABOUT",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          PaymentCard("About Indus Shield", ""),
          PaymentCard("Privacy Policy", ""),
          PaymentCard("Terms of Service", ""),
          PaymentCard("App Version", "v 1.0.0.1"),
        ],
      ),
    );
  }

  Padding PaymentCard(titleText, subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        elevation: 0,
        child: ListTile(
          subtitle: Text(
            subtitle,
            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 119, 119, 119),
              fontWeight: FontWeight.w400,
            ),
          ),
          // leading: Icon(Icons.add, size: 30, color: Colors.black),
          title: Text(
            titleText,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 23,
              color: Colors.black,
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        color: const Color.fromARGB(255, 245, 245, 245),
      ),
    );
  }
}
