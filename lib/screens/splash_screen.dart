import 'package:flutter/material.dart';
import 'package:vpn_ui/screens/onboardingscren.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 00),
                child: Container(
                  // height: 500,
                  // width: 500,
                  child: Image.asset(
                    "assets/images/sp.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 65),
             CircularProgressIndicator(color: Colors.grey,strokeWidth: 05,)
        ,
            ],
          ),
        ),
      ),
    );
  }
}
