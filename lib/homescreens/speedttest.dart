import 'package:flutter/material.dart';
import 'package:vpn_ui/widgets/cstmtext.dart';

import '../widgets/cstmbtn.dart';

class Speedttest extends StatefulWidget {
  const Speedttest({super.key});

  @override
  State<Speedttest> createState() => _SpeedttestState();
}

class _SpeedttestState extends State<Speedttest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff0366ff), width: 1.5),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 40,
                      child: Image.asset("assets/images/usa.png"),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Cstmtext(
                        text: "United States",
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Cstmtext(
                        text: "Auto Location",
                        textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 70),
                  CustomTextButton(
                    text: "Change",
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0xff0366ff),
                    ),
                    onPressed: () {},
                  ),
                  Icon(Icons.arrow_forward_ios, color: Color(0xff0366ff)),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Container(
                height: 250,
                width: 350,
                child: Image.asset(
                  "assets/images/speedmeter.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.download,
                        color: Colors.purple,
                        size: 35,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "64.8 ",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Mbps",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "download",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0),
              Column(
                children: [
                  Container(
                    child: Icon(
                      Icons.upload,
                      color: const Color.fromARGB(255, 202, 195, 130),
                      size: 35,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "48.8 ",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Mbps",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Upload",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Divider(height: 50, color: Colors.black),
              Column(
                children: [
                  Container(
                    child: Icon(
                      Icons.signal_cellular_alt,
                      color: Colors.greenAccent,
                      size: 35,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "10 ",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "MS",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "ping",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff0366ff), width: 1.5),
                  ),
                  child: Center(
                    child: Text(
                      "Test Again",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0366ff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
