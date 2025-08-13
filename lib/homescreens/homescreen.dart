import 'package:flutter/material.dart';

import 'package:vpn_ui/widgets/cstmbtn.dart';
import 'package:vpn_ui/widgets/cstmtext.dart';
import 'package:vpn_ui/widgets/glowbtn.dart';

class VpnHomeScreen extends StatefulWidget {
  @override
  State<VpnHomeScreen> createState() => _VpnHomeScreenState();
}

class _VpnHomeScreenState extends State<VpnHomeScreen> {
  bool isConnected = false;

  void btnChange() {
    setState(() {
      isConnected = !isConnected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   leading: Icon(Icons.menu, size: 30),
      //   title: Cstmtext(
      //     text: "VPN",
      //     textStyle: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
      //   ),
      //   centerTitle: true,
      //   actions: [Icon(Icons.person_outline_sharp, size: 30)],
      // ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff0366ff), width: 1.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/king.png',
                  fit: BoxFit.fill,
                  //height: 30,
                  //width: 30,
                ),
              ),
            ),
          ),
          SizedBox(height: 100),
          Center(
            child: GlowingButton(
              onTap: () {
                btnChange();
              },
            ),
          ),
          SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Cstmtext(
                text: "Status",
                textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
              SizedBox(width: 10),
              Cstmtext(
                text: isConnected ? 'Connected' : "Not Connected",
                textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: isConnected ? Colors.green : Colors.red,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),

          Text(
            '00 : 00 : 00',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
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
            ],
          ),
        ],
      ),
    );
  }
}
