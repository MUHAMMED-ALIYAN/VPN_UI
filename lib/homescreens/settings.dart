// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:vpn_ui/screens/bottomnavbar.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
          "SETTINGS",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          PaymentCard("Account", "Automatic (recomemnded)"),
          PaymentCard("Split Tunneling", "off"),
          PaymentCard("DNS", "Default"),
          PaymentCard("Restore Purchase", ""),
          PaymentCard("Remove Data", ""),
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
          // leading: Icon(Icons.add, size: 30, color: Colors.black),
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              titleText,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23,
                color: Colors.black,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              subtitle,
              style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 119, 119, 119),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        color: const Color.fromARGB(255, 245, 245, 245),
      ),
    );
  }
}
