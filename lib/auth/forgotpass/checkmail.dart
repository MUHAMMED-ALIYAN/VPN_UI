import 'package:flutter/material.dart';
import 'package:vpn_ui/auth/loginscreen.dart';
import 'package:vpn_ui/widgets/cstmbtn.dart';

import 'package:vpn_ui/widgets/cstmtext.dart';

class CheckMail extends StatefulWidget {
  const CheckMail({super.key});

  @override
  State<CheckMail> createState() => CheckMailState();
}

class CheckMailState extends State<CheckMail> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("assets/images/ckm.png"),
              ),
              Center(
                child: Cstmtext(
                  text: "Check Your Email",
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  Text(
                    "Please enter your registered Email adress below to recieve ",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 165, 161, 161),
                    ),
                  ),
                  Text(
                    "instructions forresetting your password",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 165, 161, 161),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              CustomElevatedButton(
                text: "Back to Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                backgroundColor: const Color(0xff0366ff),
                foregroundColor: Colors.white,
                elevation: 15,
                borderRadius: 8,

                /// width: 50,
                height: 58,
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
