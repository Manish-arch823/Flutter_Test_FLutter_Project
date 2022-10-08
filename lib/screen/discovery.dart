import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertest/screen/profiledetails.dart';

import 'adduser.dart';

class Discovery extends StatefulWidget {
  const Discovery({Key? key}) : super(key: key);

  @override
  State<Discovery> createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;

    Widget card = Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.2,
            width: screenWidth,
            // color: Colors.orange,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/tom-city.jpg"),
              ),
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  20,
                ),
                topLeft: Radius.circular(
                  20,
                ),
              ),
            ),
          ),
          Container(
              height: screenHeight * 0.2,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    20,
                  ),
                  bottomRight: Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Rixha Pawar",
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 60, 62),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w200)),
                  SizedBox(
                    height: 4.0,
                  ),
                  const Text("Email",
                      style: TextStyle(
                          color: Color.fromARGB(255, 87, 87, 89),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300)),
                  SizedBox(
                    height: 4.0,
                  ),
                  const Text("Location",
                      style: TextStyle(
                          color: Color.fromRGBO(97, 97, 99, 1),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300)),
                  SizedBox(
                    height: 4.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileDetails()),
                      );
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromRGBO(128, 105, 212, 1),
                              Color.fromRGBO(193, 131, 178, 1),
                            ],
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: const Text('View  Profile',
                          style: TextStyle(fontSize: 20)),
                    ),
                  )
                ],
              )),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Positioned(
                top: 5.0,
                left: screenWidth * 0.4,
                child: const Text(
                  "HireTheARt",
                  style: TextStyle(
                      color: Color.fromRGBO(97, 97, 99, 1),
                      fontSize: 21.0,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                      height: 35.0,
                      width: 35.0,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddUser()),
                          );
                        },
                        icon: Image.asset(
                            alignment: Alignment.topRight, "images/plus.png"),
                      )),
                ),
              )
            ],
          ),
          Divider(
            thickness: 3.0,
            color: Color.fromARGB(255, 127, 126, 125),
          ),
          card,
          card,
        ],
      )),
      bottomNavigationBar: Container(
        height: screenHeight * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: const BorderRadius.only(
          //   topLeft: Radius.circular(20),
          //   topRight: Radius.circular(20),
          // ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.photo,
                  color: Color.fromRGBO(152, 152, 153, 1),
                ),
                Text("Discovery", style: TextStyle(fontSize: 12.0)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.fire_extinguisher_sharp,
                    color: Color.fromRGBO(152, 152, 153, 1)),
                Text("Feed", style: TextStyle(fontSize: 12.0)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.chat, color: Color.fromRGBO(152, 152, 153, 1)),
                Text("Chat", style: TextStyle(fontSize: 12.0)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.settings, color: Color.fromRGBO(152, 152, 153, 1)),
                Text("Settings", style: TextStyle(fontSize: 12.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
