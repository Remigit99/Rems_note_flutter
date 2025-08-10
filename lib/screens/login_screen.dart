import 'package:flutter/material.dart';
import 'package:note_app_flutter/utilis/custom_button.dart';
import "../utilis/custom_input.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              Image.asset("assets/images/logo.png", width: 150, height: 150),
              SizedBox(height: 25),
              Text(
                "Login to Aora",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 5),
                  CustomInput(
                    inputHintText: "Enter your Email Address",
                    inputTextController: TextEditingController(),
                    inputPrefixIcon: Icon(Icons.email_sharp),
                    inputKeyboardType: TextInputType.emailAddress,
                    inputObscureText: false,
                  ),
                ],
              ),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 5),
                  CustomInput(
                    inputHintText: "Enter your Password",
                    inputTextController: TextEditingController(),
                    inputPrefixIcon: Icon(Icons.key),
                    inputKeyboardType: TextInputType.numberWithOptions(),
                    inputObscureText: true,
                  ),
                ],
              ),
              SizedBox(height: 24),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(alignment: Alignment.center, child: CustomButton()),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w500,
                    ),
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
