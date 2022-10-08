import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import 'discovery.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;

    Widget sizeGalley = SizedBox(width: 10.0);

    Widget gellery = Container(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
      height: 70.0,
      width: 70.0,
      // color: Colors.orange,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("images/tom-city.jpg"),
        ),
        color: Colors.orange,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            10.0,
          ),
          topLeft: Radius.circular(
            10.0,
          ),
          bottomLeft: Radius.circular(
            10.0,
          ),
          bottomRight: Radius.circular(
            10.0,
          ),
        ),
      ),
    );

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
                  Text("Richa  Pawar",
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
                    onPressed: () {},
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

    int pageIndex = 0;

    List<Widget> _demo = [
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [gellery, sizeGalley, gellery, sizeGalley, gellery],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [gellery, sizeGalley, gellery, sizeGalley, gellery],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [gellery, sizeGalley, gellery, sizeGalley, gellery],
            )
          ],
        ),
      ),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [gellery, sizeGalley, gellery, sizeGalley, gellery],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [gellery, sizeGalley, gellery, sizeGalley, gellery],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [gellery, sizeGalley, gellery, sizeGalley, gellery],
            )
          ],
        ),
      ),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [gellery, sizeGalley, gellery, sizeGalley, gellery],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [gellery, sizeGalley, gellery, sizeGalley, gellery],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [gellery, sizeGalley, gellery, sizeGalley, gellery],
            )
          ],
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Discovery()),
                    );
                  },
                  icon: Icon(Icons.arrow_back)),
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 50.0,
                    width: 50.0,
                    // child: Image.asset(
                    //     alignment: Alignment.topRight, "images/plus.png")
                  ),
                ),
              )
            ],
          ),
          Divider(
            thickness: 3.0,
            color: Color.fromARGB(255, 127, 126, 125),
          ),
          card,
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Gallery", style: TextStyle(fontSize: 15.0))),
          ),
          Container(
            height: 300,
            width: double.infinity,
            child: PageView(
              children: _demo,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
            ),
          ),
          CarouselIndicator(
            activeColor: Colors.blue,
            color: Colors.black,
            count: _demo.length,
            index: pageIndex,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
