import 'package:flutter/material.dart';
import 'package:vpn_ui/auth/forgotpass/checkmail.dart';
import 'package:vpn_ui/widgets/cstmbtn.dart';
import 'package:vpn_ui/widgets/cstmtext.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController email = TextEditingController();

  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 130),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("assets/images/lock.png"),
              ),
              Center(
                child: Cstmtext(
                  text: "Forgot Password ?",
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
                      height: 2.5,
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
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomElevatedButton(
                  text: "SEND MAIL",
                  onPressed: () {
                    if (formState.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CheckMail()),
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
            ],
          ),
        ),
      ),
    );
  }
}
