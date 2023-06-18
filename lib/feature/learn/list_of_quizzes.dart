import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'list_of_lessons.dart';
import 'ongoing_quiz.dart';


class ListOfQuizzes extends StatefulWidget {
  createState() {
    return ListOfQuizzesState();
  }
}

class ListOfQuizzesState extends State<ListOfQuizzes> {
  final _formKey = GlobalKey<FormState>();

  int _selectedIndex = 0;
  static List<Widget> _screens = [
    /*Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),*/
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => _screens[_selectedIndex]),
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10.0),
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
              ),
              Center(
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFcccccc),
                            ),
                          ),
                          Icon(
                            Icons.person, // The icon to display
                            color: Color(0xFF147B72), // Color of the icon
                            size: 70.0,
                          ),
                        ]
                    ),
                    SizedBox(height: 10.0),
                    RichText(
                      text: TextSpan(
                        text: 'Anirudh Ravichander',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    RichText(
                      text: TextSpan(
                        text: 'anirudhravi@gmail.com',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 30.0),
              ListTile(
                title: Row(
                  children: [
                    SizedBox(width: 30.0),
                    Icon(
                      Icons.person, // The icon to display
                      color: Color(0xFF147B72), // Color of the icon
                      size: 30.0,
                    ),
                    SizedBox(width: 10.0),
                    RichText(
                      text: TextSpan(
                        text: 'Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF147B72),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    SizedBox(width: 30.0),
                    Icon(
                      Icons.help, // The icon to display
                      color: Color(0xFF147B72), // Color of the icon
                      size: 30.0,
                    ),
                    SizedBox(width: 10.0),
                    RichText(
                      text: TextSpan(
                        text: 'Help',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF147B72),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    SizedBox(width: 30.0),
                    Icon(
                      Icons.settings, // The icon to display
                      color: Color(0xFF147B72), // Color of the icon
                      size: 30.0,
                    ),
                    SizedBox(width: 10.0),
                    RichText(
                      text: TextSpan(
                        text: 'Settings',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF147B72),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    SizedBox(width: 20.0),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(top: 15.0),
                      child: ElevatedButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.logout_rounded, // The icon to display
                              color: Color(0xFFFFFFFF), // Color of the icon
                              size: 30.0,
                            ),
                            Text('Log out',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(220, 50)),
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF147B72)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Set border radius
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),


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
                        child: Text(
                          'Lessons',
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
                            MaterialPageRoute(builder: (context) => ListOfLessons()),
                          );
                        },
                      ),
                      Container(
                        width:10,
                      ),
                      ElevatedButton(
                        child: Text('Quizzes'),
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
                                  hintText: 'Search Quiz',
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
                            Container(
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
                                    Icons.quiz_outlined, // The icon to display
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
                                          text:'15 questions',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                    child: Text('Start',
                                      style: TextStyle(
                                        fontSize: 12.0, // Replace with your desired font size
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      fixedSize: MaterialStateProperty.all(Size(95, 30)),
                                      backgroundColor: MaterialStateProperty.all<Color>(
                                          Color(0xFF147B72)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => OngoingQuiz()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),

                            Container(
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
                                    Icons.quiz_outlined, // The icon to display
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
                                          text:'Months',
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
                                          text:'15 questions',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                    child: Text('Start',
                                      style: TextStyle(
                                        fontSize: 12.0, // Replace with your desired font size
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      fixedSize: MaterialStateProperty.all(Size(95, 30)),
                                      backgroundColor: MaterialStateProperty.all<Color>(
                                          Color(0xFF147B72)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      /*Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Login()),
                                        ); */
                                    },
                                  ),
                                ],
                              ),
                            ),

                            Container(
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
                                    Icons.quiz_outlined, // The icon to display
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
                                          text:'15 questions',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                    child: Text('Completed',
                                      style: TextStyle(
                                        fontSize: 12.0, // Replace with your desired font size
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      fixedSize: MaterialStateProperty.all(Size(95, 30)),
                                      backgroundColor: MaterialStateProperty.all<Color>(
                                          Color(0xFF656565)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      /*Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Login()),
                                        ); */
                                    },
                                  ),
                                ],
                              ),
                            ),


                          ]
                      )
                  ),

                ]
            )
        ),


        bottomNavigationBar: BottomNavigationBar(// Set background color
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
        ),

      ),

    );

  }
}