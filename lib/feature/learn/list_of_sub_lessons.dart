import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'ongoing_lesson.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/left_drawer.dart';
import '../widgets/screens.dart';


class ListOfSubLessons extends StatefulWidget {
  createState() {
    return ListOfSubLessonsState();
  }
}

class ListOfSubLessonsState extends State<ListOfSubLessons> {

  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => screens[_currentIndex]),
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
                  Row(
                    children: [
                      SizedBox(width: 15.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded, // The icon to display
                          color: Color(0xFF147B72), // Color of the icon
                          size: 20.0, // Size of the icon
                        ),
                      ),
                      SizedBox(width: 10.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: RichText(
                          text: TextSpan(
                            text: 'Back',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF147B72),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height:15,
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo_album_outlined, // The icon to display
                              color: Color(0xFF147B72), // Color of the icon
                              size: 35.0,
                            ),
                            RichText(
                              text: TextSpan(
                                text: ' Days of the week',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFF147B72),
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),
                  ),


                  //Box to show recent translations
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFFE8F3F1),
                      ),
                      padding: EdgeInsets.all(20.0),
                      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),

                      child: Column(
                          children: <Widget>[
                            Container(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => OngoingLesson()),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top:5.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0, 6), // Offset of the shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(6.0),
                                      color: Color(0xFFFFFFFF),
                                      border: Border.all(
                                        color: Color(0xFF147B72), // Replace with your desired border color
                                        width: 1.0, // Replace with your desired border width
                                      ),
                                    ),
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Column(
                                        children: [
                                          Image.asset('assets/image/splash-screen/sign_lang_sample.png', width: 140.0, ),
                                          Container(
                                            height: 5,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: RichText(
                                              text: TextSpan(
                                                text:'Monday',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 5,
                                          ),
                                          Container(
                                            width:120,
                                            child: Row(
                                              children: [
                                                Image.asset('assets/image/splash-screen/camera.png', width: 10.0, ),
                                                RichText(
                                                  text: TextSpan(
                                                    text:' 00.10',
                                                    style: TextStyle(
                                                      fontSize: 8,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ),
                                Container(width: 10.0),
                                GestureDetector(
                                  onTap: () {

                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top:5.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0, 6), // Offset of the shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(6.0),
                                      color: Color(0xFFFFFFFF),
                                      border: Border.all(
                                        color: Color(0xFF147B72), // Replace with your desired border color
                                        width: 1.0, // Replace with your desired border width
                                      ),
                                    ),
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Column(
                                        children: [
                                          Image.asset('assets/image/splash-screen/sign_lang_sample.png', width: 140.0, ),
                                          Container(
                                            height: 5,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: RichText(
                                              text: TextSpan(
                                                text:'Tuesday',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 5,
                                          ),
                                          Container(
                                            width:120,
                                            child: Row(
                                              children: [
                                                Image.asset('assets/image/splash-screen/camera.png', width: 10.0, ),
                                                RichText(
                                                  text: TextSpan(
                                                    text:' 00.10',
                                                    style: TextStyle(
                                                      fontSize: 8,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {

                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top:5.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0, 6), // Offset of the shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(6.0),
                                      color: Color(0xFFFFFFFF),
                                      border: Border.all(
                                        color: Color(0xFF147B72), // Replace with your desired border color
                                        width: 1.0, // Replace with your desired border width
                                      ),
                                    ),
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Column(
                                        children: [
                                          Image.asset('assets/image/splash-screen/sign_lang_sample.png', width: 140.0, ),
                                          Container(
                                            height: 5,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: RichText(
                                              text: TextSpan(
                                                text:'Wednesday',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 5,
                                          ),
                                          Container(
                                            width:120,
                                            child: Row(
                                              children: [
                                                Image.asset('assets/image/splash-screen/camera.png', width: 10.0, ),
                                                RichText(
                                                  text: TextSpan(
                                                    text:' 00.10',
                                                    style: TextStyle(
                                                      fontSize: 8,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ),
                                Container(width: 10.0),
                                GestureDetector(
                                  onTap: () {

                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top:5.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0, 6), // Offset of the shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(6.0),
                                      color: Color(0xFFFFFFFF),
                                      border: Border.all(
                                        color: Color(0xFF147B72), // Replace with your desired border color
                                        width: 1.0, // Replace with your desired border width
                                      ),
                                    ),
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Column(
                                        children: [
                                          Image.asset('assets/image/splash-screen/sign_lang_sample.png', width: 140.0, ),
                                          Container(
                                            height: 5,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: RichText(
                                              text: TextSpan(
                                                text:'Thursday',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 5,
                                          ),
                                          Container(
                                            width:120,
                                            child: Row(
                                              children: [
                                                Image.asset('assets/image/splash-screen/camera.png', width: 10.0, ),
                                                RichText(
                                                  text: TextSpan(
                                                    text:' 00.10',
                                                    style: TextStyle(
                                                      fontSize: 8,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              height: 10,
                            ),
                          ]
                      )
                  ),

                ]
            )
        ),

        bottomNavigationBar: BottomNav(
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}