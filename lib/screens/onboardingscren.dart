import 'package:flutter/material.dart';
import 'package:vpn_ui/screens/premium.dart';
import 'package:vpn_ui/widgets/cstmbtn.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen();

  @override
  State<OnBoardingScreen> createState() => __OnBoardingScreenStateState();
}

class __OnBoardingScreenStateState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CustomTextButton(
                text: currentindex == 2 ? "SKIP" : "",

                textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF0366FF),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PremiumScreen()),
                  );
                },
              ),
            ),
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (pagevalue) {
                  currentindex = pagevalue;
                  setState(() {});
                },
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "VPN",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset(
                          "assets/images/ob1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Private Connection",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 22),
                        child: Text(
                          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.this is unique vpn app for u",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 155, 154, 154),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "VPN",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset(
                          "assets/images/ob2.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Safe Web Navigation",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 22),
                        child: Text(
                          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.this is unique vpn app for u",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 155, 154, 154),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "VPN",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset(
                          "assets/images/ob3.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Access to Multiple Servers",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 22),
                        child: Text(
                          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.this is unique vpn app for u",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 155, 154, 154),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: List.generate(
                3,
                (index) => AnimatedContainer(duration: Duration(milliseconds: 300),
                  width: currentindex == index ? 30 : 20,
                  height: currentindex == index ? 30 : 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: currentindex == index
                        ? const Color(0Xff0366FF)
                        : Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
