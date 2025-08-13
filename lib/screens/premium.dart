import 'package:flutter/material.dart';
import 'package:vpn_ui/auth/loginscreen.dart';
import 'package:vpn_ui/screens/paymentmethod.dart';

import 'package:vpn_ui/widgets/cstmbtn.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  PageController pageController = PageController();
  var currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text(
          "VPN",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CustomTextButton(
            text: "CLOSE",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (pagevalue) {
                  currentindex = pagevalue;
                  setState(() {});
                },
                children: [
                  Column(
                    children: [
                      Text(
                        "Upgrade to Quark Premium to get these all",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 155, 154, 154),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        " great features",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 155, 154, 154),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(12),
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(181, 243, 240, 240),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Text(
                                  "Billed\nMonthly",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 80),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0Xff0366FF),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 67),
                                Text(
                                  "Billed\nAnually",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.all(12),
                            height: 500,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(181, 243, 240, 240),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 13,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Monthly Premium",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            0,
                                            0,
                                            0,
                                          ),
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "4 Users allowed",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            155,
                                            154,
                                            154,
                                          ),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text(
                                            "\$8,99",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                0,
                                                0,
                                                0,
                                              ),
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "/month",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                155,
                                                154,
                                                154,
                                              ),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      CustomElevatedButton(
                                        width: 800,
                                        borderRadius: 35,
                                        text: "Subscribe Now",
                                        textStyle: TextStyle(fontSize: 20),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PaymentMethod(),
                                            ),
                                          );
                                        },
                                        backgroundColor: Color(0xff0366FF),
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.public,
                                            size: 25,
                                            color: const Color(0Xff0366FF),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Faster WorlsWide Location",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                114,
                                                113,
                                                113,
                                              ),
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.rocket_launch,
                                            size: 25,
                                            color: const Color(0Xff0366FF),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Super Fast Server Connection",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                114,
                                                113,
                                                113,
                                              ),
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.block,
                                            size: 25,
                                            color: const Color(0Xff0366FF),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "No Ads",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                114,
                                                113,
                                                113,
                                              ),
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.security,
                                            size: 25,
                                            color: const Color(0Xff0366FF),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Searching more Secure",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                114,
                                                113,
                                                113,
                                              ),
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.all_inclusive,
                                            size: 25,
                                            color: const Color(0Xff0366FF),
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "No Limit Connection",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                114,
                                                113,
                                                113,
                                              ),
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Second Page (for example)
                  Column(
                    children: [
                      Text(
                        "Upgrade to Quark Premium to get these all",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 155, 154, 154),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        " great features",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 155, 154, 154),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(12),
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(181, 243, 240, 240),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Text(
                                  "Billed\nMonthly",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 80),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0Xff0366FF),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 67),
                                Text(
                                  "Billed\nAnually",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.all(12),
                            height: 500,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(181, 243, 240, 240),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 13,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Annual Premium",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            0,
                                            0,
                                            0,
                                          ),
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "4 Users allowed",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            155,
                                            154,
                                            154,
                                          ),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text(
                                            "\$70,99",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                0,
                                                0,
                                                0,
                                              ),
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "/yearly",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                155,
                                                154,
                                                154,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      CustomElevatedButton(
                                        width: 800,
                                        borderRadius: 35,
                                        text: "Subscribe Now",
                                        textStyle: TextStyle(fontSize: 20),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PaymentMethod(),
                                            ),
                                          );
                                        },
                                        backgroundColor: const Color(
                                          0xff0366FF,
                                        ),
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.public,
                                            size: 25,
                                            color: const Color(0Xff0366FF),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Faster WorlsWide Location",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                114,
                                                113,
                                                113,
                                              ),
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.rocket_launch,
                                            size: 25,
                                            color: const Color(0Xff0366FF),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Super Fast Server Connection",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                114,
                                                113,
                                                113,
                                              ),
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.block,
                                            size: 25,
                                            color: const Color(0Xff0366FF),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "No Ads",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                114,
                                                113,
                                                113,
                                              ),
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.security,
                                            size: 25,
                                            color: const Color(0Xff0366FF),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Searching more Secure",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                114,
                                                113,
                                                113,
                                              ),
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.all_inclusive,
                                            size: 25,
                                            color: const Color(0Xff0366FF),
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "No Limit Connection",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                114,
                                                113,
                                                113,
                                              ),
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  height: currentindex == index ? 30 : 10,
                  width: currentindex == index ? 30 : 10,
                  decoration: BoxDecoration(
                    color: currentindex == index
                        ? const Color(0XFF0366FF)
                        : Colors.grey.shade500,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
