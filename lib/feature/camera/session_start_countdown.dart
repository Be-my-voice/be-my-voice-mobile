import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
//import 'package:charts_flutter/flutter.dart' as charts;
import '../learn/list_of_lessons.dart';
import '../camera/camera.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/left_drawer.dart';
import '../widgets/screens.dart';
import '../home-screens/home.dart';
import 'session_start_view.dart';


/*class GraphData {
  final String category;
  final double percentage;
  final charts.Color color;
  GraphData(this.category, this.percentage, this.color);
} */

class SessionStartCountdown extends StatefulWidget {
  createState() {
    return SessionStartCountdownState();
  }
}

class SessionStartCountdownState extends State<SessionStartCountdown> {
  int _counter = 03;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _counter--;
      });
    });
    Future.delayed(Duration(seconds: 3), () {
      _counter = 3;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Camera()),
      );
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFe5e5e5),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF147B72), size: 30.0),
          backgroundColor: Color(0xFFFFFFFF),
          title: Row(
            children: [
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5.0, right: 20.0),
                    child: Image.asset('assets/image/splash-screen/appbar_logo.png',
                      width: 200.0, ),
                  )
              ),
            ],
          ),
        ),
        drawer: LeftDrawer(),

        body: Padding(
            padding: EdgeInsets.all(5.0),
            child: ListView(
                children: [
                  Container(
                    height:5,
                  ),


                  Container(
                    margin: EdgeInsets.only(top: 160.0, left: 40.0, right: 40.0),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'The session will start in ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xFF147B72),
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '$_counter',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 70,
                                color: Color(0xFF147B72),
                              ),
                            ),
                          ),

                        ]
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 90.0, left: 40.0, right: 40.0),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'session ID ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFFADB3BC),
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'ABC-DEF-GHI ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xFF555555),
                              ),
                            ),
                          ),

                        ]
                    ),
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 90.0, bottom: 40),
                    child: ElevatedButton(
                      child: Text(
                        'Leave session',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold, // Set the text color
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(230, 50)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFFFF0000)),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(
                                color: Color(0xFFFF0000), width: 1.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              title:
                              Column(
                                  children : [
                                    Container(
                                      height: 20,
                                    ),
                                    Icon(
                                      Icons.sentiment_very_dissatisfied,
                                      size: 60.0,
                                      color: Color(0xFF147B72),
                                    ),
                                  ]
                              ),
                              content:
                              SizedBox(
                                height: 150,
                                child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                                        child: Text('Do you wish to quit?',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,// Set the text color
                                          ),
                                        ),
                                      ),

                                      Container(
                                        child: Text('Your session will be automatically\n cancelled if you choose to\n cancel it.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFA1A8B0),
                                            fontSize: 18,// Set the text color
                                          ),
                                        ),
                                      ),
                                    ]
                                ),
                              ),

                              actions: [
                                Column(
                                  children: [
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children :[
                                          ElevatedButton(
                                            child: Text('Back to Session',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                color: Color(0xFFFFFFFF),
                                              ),),
                                            style: ButtonStyle(
                                              fixedSize: MaterialStateProperty.all(Size(135, 50)),
                                              backgroundColor: MaterialStateProperty.all<Color>(
                                                  Color(0xFF147B72)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      25),
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => SessionStartView()),
                                              );
                                            },
                                          ),
                                          Container(
                                            width: 10,
                                          ),
                                          ElevatedButton(
                                            child: Text('End Session',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                color: Color(0xFF147B72),
                                              ),),
                                            style: ButtonStyle(
                                              fixedSize: MaterialStateProperty.all(Size(130, 50)),
                                              backgroundColor: MaterialStateProperty.all<Color>(
                                                  Color(0xFFE8F3F1)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(25),
                                                  side: BorderSide(
                                                      color: Color(0xFF147B72), width: 1.0),
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              /*Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => Home()),
                                              ); */
                                              showDialog(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return AlertDialog(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20.0),
                                                    ),
                                                    title:
                                                    Column(
                                                        children : [
                                                          Container(
                                                            height: 20,
                                                          ),
                                                          Icon(
                                                            Icons.check_circle_rounded,
                                                            size: 60.0,
                                                            color: Color(0xFF147B72),
                                                          ),
                                                        ]
                                                    ),
                                                    content:
                                                    SizedBox(
                                                      height: 150,
                                                      child: Column(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                //margin: EdgeInsets.only(top: 90.0, left: 40.0, right: 40.0),
                                                                child:Column(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      RichText(
                                                                        text: TextSpan(
                                                                          text: 'session ID ',
                                                                          style: TextStyle(
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 14,
                                                                            color: Color(0xFFADB3BC),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      RichText(
                                                                        text: TextSpan(
                                                                          text: 'ABC-DEF-GHI ',
                                                                          style: TextStyle(
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 25,
                                                                            color: Color(0xFF555555),
                                                                          ),
                                                                        ),
                                                                      ),

                                                                    ]
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              child: Text('Session ended.',
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                  color: Color(0xFFA1A8B0),
                                                                  fontSize: 18,// Set the text color
                                                                ),
                                                              ),
                                                            ),
                                                          ]
                                                      ),
                                                    ),

                                                    actions: [
                                                      Column(
                                                        children: [
                                                          Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children :[
                                                                ElevatedButton(
                                                                  child: Text('Back to Home',
                                                                    style: TextStyle(
                                                                      fontSize: 14.0,
                                                                      color: Color(0xFFFFFFFF),
                                                                    ),),
                                                                  style: ButtonStyle(
                                                                    fixedSize: MaterialStateProperty.all(Size(135, 50)),
                                                                    backgroundColor: MaterialStateProperty.all<Color>(
                                                                        Color(0xFF147B72)),
                                                                    shape: MaterialStateProperty.all<
                                                                        RoundedRectangleBorder>(
                                                                      RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.circular(
                                                                            25),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  onPressed: () {
                                                                    Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(builder: (context) => Home()),
                                                                    );
                                                                  },
                                                                ),

                                                              ]
                                                          ),
                                                          Container(
                                                            height: 45,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          ),

                                        ]
                                    ),
                                    Container(
                                      height: 45,
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),

                ]
            )
        ),


        /*bottomNavigationBar: BottomNavigationBar(// Set background color
          selectedItemColor: Color(0xFF000000), // Set selected item color
          unselectedItemColor: Color(0xFFFFFFFF),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: ' ',
              backgroundColor: Color(0xFF147B72),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups_outlined),
              label: ' ',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ), */

      ),
    );
  }
}