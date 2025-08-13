import 'package:flutter/material.dart';

import 'package:vpn_ui/auth/forgotpass/forgot_password.dart';
import 'package:vpn_ui/auth/signupscreen.dart';
import 'package:vpn_ui/screens/bottomnavbar.dart';


import 'package:vpn_ui/widgets/cstmbtn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  RegExp regpassword = RegExp(
    '^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%&*])(?=.{8,})',
  );
  bool showPassword = true;

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 130),
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/images/sp.png"),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Text(
                    "login now to access faster internet",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 165, 161, 161),
                    ),
                  ),
                  Text(
                    "more than 120+ locations",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 165, 161, 161),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "EMAIL",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 165, 161, 161),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required";
                    } else if (!emailRegex.hasMatch(value)) {
                      return "Enter valid email";
                    }
                    return null;
                  },
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    // labelText: "EMAIL",
                    hintText: "Enter Your Email",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 197, 192, 192),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: const Color.fromARGB(255, 217, 217, 218),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color(0xff0366ff),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "PASSWORD",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 165, 161, 161),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required";
                    } else if (value.length < 8) {
                      return "Password must contain 8 characters";
                    }
                    return null;
                  },
                  controller: password,
                  obscureText: showPassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    // labelText: "PASSWORD",
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 197, 192, 192),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child: Icon(Icons.remove_red_eye),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: const Color.fromARGB(255, 217, 217, 218),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color(0xff0366ff),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CustomTextButton(
                  text: "Forgot Password ?",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomElevatedButton(
                  text: "LOG IN",
                  onPressed: () {
                    if (formState.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavBar()),
                      );
                    }
                  },
                  backgroundColor: const Color(0xff0366ff),
                  foregroundColor: Colors.white,
                  elevation: 15,
                  borderRadius: 8,

                  /// width: 50,
                  // height: 65,
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 165, 161, 161),
                    ),
                  ),
                  CustomTextButton(
                    text: "Signup",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
