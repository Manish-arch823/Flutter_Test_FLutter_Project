import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart';

import 'adduser.dart';
import 'discovery.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailCOntroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email, String password) async {
    print("Email $email and Password $password");
    try {
      Map<String, String> headers = {
        "Content-type": "application/json",
        "authorization": 'Bearer 178f1a3c-c028-466d-8334-9fca1147989c'
      };
      Response response = await post(
          Uri.parse('http://restapi.adequateshop.com/api/authaccount/login'),
          headers: headers,
          body: jsonEncode({
            'email': email,
            'password': password,
          }));
      if (response.statusCode == 200) {
        print("Account created successfully");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddUser()));
      } else {
        print("Faild");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(127, 105, 212, 1),
              Color.fromRGBO(185, 128, 182, 1)
            ],
          )),
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.transparent,
                      child: Image.asset(
                        "images/hire-art-logo2logo.png",
                        height: screenHeight * 0.4,
                        width: screenWidth * 0.4,
                      ))),
              Expanded(
                  flex: 4,
                  child: Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sign In",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Text("with your phone number ",
                              style: TextStyle(color: Colors.white)),
                          const SizedBox(
                            height: 5.0,
                          ),
                          TextField(
                            controller: emailCOntroller,
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Enter-id',
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 7, 15, 126)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              contentPadding: const EdgeInsets.all(16),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            controller: passwordController,
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 7, 15, 126)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              contentPadding: const EdgeInsets.all(16),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          SizedBox(
                            height: 40.0,
                            width: screenWidth,
                            child: ElevatedButton(
                              onPressed: () {
                                login(emailCOntroller.text.toString(),
                                    passwordController.text.toString());

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Discovery()),
                                );
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(128, 105, 212, 1)),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(12), // <-- Radius
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Have not any account?',
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // print('Privacy Policy"');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignupPage()),
                                    );
                                  },
                                text: '  Sign Up',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15.0)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight / 15.0,
                      ),
                      // const SizedBox(
                      //     child: Divider(thickness: 5.0, color: Colors.white)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 3.0,
                          width: 130.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
