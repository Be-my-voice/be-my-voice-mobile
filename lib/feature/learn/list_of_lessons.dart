import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'list_of_quizzes.dart';
import 'list_of_sub_lessons.dart';
import '../widgets/bottom_nav.dart';
import '../home-screens/home.dart';
import '../widgets/left_drawer.dart';
import 'dart:convert';
import 'Lesson.dart';


class ListOfLessons extends StatefulWidget {
  createState() {
    return ListOfLessonsState();
  }
}

class ListOfLessonsState extends State<ListOfLessons> {
  final _formKey = GlobalKey<FormState>();

  final jsonString = '[{"id": 6,"title": "Alphabets","enabled": true}, {"id": 7,"title": "Months","enabled": true}]';


  void processJsonData() {
    List<dynamic> jsonData = json.decode(jsonString);
    for (var item in jsonData) {
      int id = item['id'];
      String title = item['title'];
      bool enabled = item['enabled'];

      print('ID: $id, Title: $title, Enabled: $enabled');
    }

  }

  int _currentIndex = 2;
  static List<Widget> _screens = [
    /*Screen1(),
    Screen2(),
    Screen3(),
    Screen4(), */
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => _screens[_currentIndex]),
      );
    });
  }


  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double middleWidth = 0;
    if(screenWidth < 400){
      middleWidth = 100.0;
    }else{
      middleWidth = 380.0;
    }

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: Text('Lessons'),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(170, 50)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF147B72)),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        onPressed: () {
                          /*Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          ); */
                        },
                      ),
                      Container(
                        width:10,
                      ),
                      ElevatedButton(
                        child: Text(
                          'Quizzes',
                          style: TextStyle(
                            color: Color(0xFF147B72),
                            fontWeight: FontWeight.bold, // Set the text color
                          ),
                        ),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(170, 50)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFFFFFFF)),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Color(0xFF147B72), width: 1.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListOfQuizzes()),
                          );
                        },
                      ),
                    ],
                  ),
                  Container(
                    height:20,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                          children: [

                            Container(
                              height:10,
                            ),

                            Container(
                              margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:5 ),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                                  hintText: 'Search Lesson',
                                  prefixIcon: Icon(Icons.search_rounded),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Color(0xFF147B72), // Set your desired border color here
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                                onChanged: (value) {
                                  // Handle text changes
                                  processJsonData();
                                },
                              ),
                            ),

                          ]
                      )
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                /*Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ListOfSubLessons()),
                                ); */
                              },
                              child: Container(
                                margin: EdgeInsets.only(top:5.0, bottom: 5.0),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0.5,
                                      blurRadius: 2,
                                      offset: Offset(0, 6), // Offset of the shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFFFFFFFF),
                                ),
                                padding: EdgeInsets.all(15.0),
                                child: Row(
                                    children: [
                                      Icon(
                                        Icons.photo_album_outlined, // The icon to display
                                        color: Color(0xFF147B72), // Color of the icon
                                        size: 35.0,
                                      ),
                                      SizedBox(
                                        width:5,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text:'Introduction to Sign Language',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Color(0xFF147B72),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height:5,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text:'Completed 0 out of 12',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded, // The icon to display
                                        color: Color(0xFF147B72), // Color of the icon
                                        size: 25.0,
                                      ),
                                    ],
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ListOfSubLessons()),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(top:5.0, bottom: 5.0),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0.5,
                                      blurRadius: 2,
                                      offset: Offset(0, 6), // Offset of the shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFFFFFFFF),
                                ),
                                padding: EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.photo_album_outlined, // The icon to display
                                      color: Color(0xFF147B72), // Color of the icon
                                      size: 35.0,
                                    ),
                                    SizedBox(
                                      width:10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text:'Days of the Week',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color(0xFF147B72),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height:5,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text:'Completed 0 out of 07',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded, // The icon to display
                                      color: Color(0xFF147B72), // Color of the icon
                                      size: 25.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: () {

                              },
                              child: Container(
                                margin: EdgeInsets.only(top:5.0, bottom: 5.0),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0.5,
                                      blurRadius: 2,
                                      offset: Offset(0, 6), // Offset of the shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFFFFFFFF),
                                ),
                                padding: EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.photo_album_outlined, // The icon to display
                                      color: Color(0xFF147B72), // Color of the icon
                                      size: 35.0,
                                    ),
                                    SizedBox(
                                      width:10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text:'Basic Greetings',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color(0xFF147B72),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height:5,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text:'Completed 0 out of 06',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded, // The icon to display
                                      color: Color(0xFF147B72), // Color of the icon
                                      size: 25.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),


                          ]
                      )
                  ),

                ]
            )
        ),


        /*bottomNavigationBar: BottomNavigationBar(// Set background color
          selectedItemColor: Color(0xFF000000), // Set selected item color
          unselectedItemColor: Color(0xFFFFFFFF),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded ),
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
        bottomNavigationBar: BottomNav(
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
        ),

      ),

    );

  }
}