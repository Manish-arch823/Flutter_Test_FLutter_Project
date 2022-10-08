import 'package:flutter/material.dart';
import 'package:fluttertest/screen/adduser.dart';
import 'package:fluttertest/screen/login.dart';
import 'package:fluttertest/screen/signup.dart';

import 'screen/discovery.dart';
import 'screen/profiledetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
