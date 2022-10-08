import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../model/apiservice.dart';
import 'adduser.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailCOntroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // void login(String name, String email, password) async {
  //   try {
  //     Response response = await post(
  //         Uri.parse(
  //             'http://restapi.adequateshop.com/api/authaccount/registration'),
  //         body: {'name': name, 'email': email, 'password': password});
  //   if (response.statusCode == 200) {
  //     print("Account created successfully");
  //   } else {
  //     print("Faild");
  //   }
  // } catch (e) {
  //   print(e.toString());
  // }
  // }

  // _register() {
  //   var data = {
  //     'name': nameController.text,
  //     'email': emailCOntroller.text,
  //     'password': passwordController.text,
  //   };
  //   var res = CallApi().postData(data, 'registration');

  //   var body = json.decode(res.body);
  //   print("BODY $body");
  //   if (body['success']) {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => LoginPage()));
  //   }
  // }

  void signup(String name, String email, String password) async {
    print("Name $name Email $email and Password $password");
    try {
      Map<String, String> headers = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        // 'Access-Control-Allow-Origin': '*',

        // "Access-Control-Allow-Credentials":
        //     "true", // Required for cookies, authorization headers with HTTPS
        // "Access-Control-Allow-Headers":
        //     "Content-Type,X-Auth-Token,Origin,Authorization",

        // "Access-Control-Allow-Methods": "POST, OPTIONS,GET,DELETE",
      };
      Response response = await post(
          Uri.parse(
              'http://restapi.adequateshop.com/api/authaccount/registration'),
          headers: headers,
          body: jsonEncode(<String, String>{
            "name": "Jivansa1s",
            "email": "j2Deveas2asloper5@gmail.com",
            "password": "123456"
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
                            "Sign Up",
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
                            controller: nameController,
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Enter your name',
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
                            controller: emailCOntroller,
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Email-id',
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
                          const SizedBox(height: 10.0),
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
                                signup(
                                    nameController.text.toString(),
                                    emailCOntroller.text.toString(),
                                    passwordController.text.toString());
                                // _register();
                                // login(nameController.text, emailCOntroller.text,
                                //     passwordController.text);
                              },
                              child: Text(
                                "Submit",
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
                          text: 'Already  have an account?',
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('Privacy Policy"');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginPage()),
                                    );
                                  },
                                text: '  Sign In',
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
