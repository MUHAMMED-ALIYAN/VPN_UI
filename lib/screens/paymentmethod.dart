// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:vpn_ui/screens/premium.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PremiumScreen()),
            );
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PAYMENT",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xff0366ff),
              ),
            ),
            SizedBox(width: 10),
            Text("METHOD", style: TextStyle(fontWeight: FontWeight.w400)),
          ],
        ),
      ),
      body: Column(
        children: [
          PaymentCard("Credit Or Debit Card"),
          PaymentCard("Apple Pay"),
          PaymentCard("Google Pay"),
          PaymentCard("Paypal"),
        ],
      ),
    );
  }

  Padding PaymentCard(titleText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Card(
        elevation: 0,
        child: ListTile(
          leading: Icon(Icons.add, size: 30, color: Colors.black),
          title: Text(
            titleText,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        color: const Color.fromARGB(255, 245, 245, 245),
      ),
    );
  }
}
