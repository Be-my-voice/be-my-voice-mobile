import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import '../home-screens/home.dart';


class QuizAnswerCorrect extends StatefulWidget {
  createState() {
    return QuizAnswerCorrectState();
  }
}

class QuizAnswerCorrectState extends State<QuizAnswerCorrect> {

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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
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
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xFFFFFFFF),
                                      border: Border.all(
                                        color: Color(0xFF147B72), // Replace with your desired border color
                                        width: 1.0, // Replace with your desired border width
                                      ),
                                    ),
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Image.asset('assets/image/splash-screen/sign_lang_sample.png', width: 260.0) ,
                                              Positioned(
                                                top: 16.0, // Adjust the top position as needed
                                                right: 16.0, // Adjust the left position as needed
                                                child: Row(
                                                  children: [
                                                    Image.asset('assets/image/splash-screen/camera.png', width: 15.0, ),
                                                    RichText(
                                                      text: TextSpan(
                                                        text:' 00.10',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Color(0xFF000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 15,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: RichText(
                                              text: TextSpan(
                                                text:'What does above sign indicate?',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                          ),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                child: Text('Monday',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Color(0xFF147B72),
                                                  ),),
                                                style: ButtonStyle(
                                                  fixedSize: MaterialStateProperty.all(Size(105, 40)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(
                                                      Color(0xFFE8F3F1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  /*Navigator.push(context,
                                                    MaterialPageRoute(builder: (context) => Login()),
                                                   ); */
                                                },
                                              ),
                                              Container(
                                                width:15,
                                              ),
                                              ElevatedButton(
                                                child: Text('Tuesday',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Color(0xFF147B72),
                                                  ),),
                                                style: ButtonStyle(
                                                  fixedSize: MaterialStateProperty.all(Size(105, 40)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(
                                                      Color(0xFFE8F3F1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
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
                                          Container(
                                            height: 10,
                                          ),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                child: Text('Wednesday',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Color(0xFF147B72),
                                                  ),),
                                                style: ButtonStyle(
                                                  fixedSize: MaterialStateProperty.all(Size(105, 40)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(
                                                      Color(0xFFE8F3F1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  /*Navigator.push(context,
                                                    MaterialPageRoute(builder: (context) => Login()),
                                                   ); */
                                                },
                                              ),
                                              Container(
                                                width:15,
                                              ),
                                              ElevatedButton(
                                                child: Text('Saturday',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Color(0xFFFFFFFF),
                                                  ),),
                                                style: ButtonStyle(
                                                  fixedSize: MaterialStateProperty.all(Size(105, 40)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(
                                                      Color(0xFF63D81B)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
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
                                        ]
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              height: 15,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: '1 out of 07',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF147B72),
                                      ),
                                    ),
                                  ),

                                ]
                            ),
                            Container(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_back_rounded, // The icon to display
                                        color: Color(0xFF147B72), // Color of the icon
                                        size: 20.0,
                                      ),
                                      Text(
                                        'Previous',
                                        style: TextStyle(
                                          color: Color(0xFF147B72),
                                          fontWeight: FontWeight.bold, // Set the text color
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all(Size(110, 40)),
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                        Color(0xFFFFFFFF)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: BorderSide(
                                            color: Color(0xFF147B72), width: 1.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    /*Navigator.push(context,
                                     MaterialPageRoute(builder: (context) => Signup()),
                                      ); */
                                  },
                                ),
                                Container(
                                  width:50,
                                ),
                                ElevatedButton(
                                  child: Row(
                                    children: [
                                      Container(width:5),
                                      Text('Next'),
                                      Container(width:5),
                                      Icon(
                                        Icons.arrow_forward_rounded, // The icon to display
                                        color: Color(0xFFFFFFFF), // Color of the icon
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all(Size(100, 40)),
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
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20.0), // Set the desired border radius here
                                          ),
                                          title:
                                          Column(
                                              children : [
                                                Container(
                                                  height: 20,
                                                ),
                                                Icon(
                                                  Icons.celebration_outlined,
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
                                                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                                                        child: Text('Congratulations!',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(0xFF000000),
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 20,// Set the text color
                                                          ),
                                                        ),
                                                      )
                                                  ),

                                                  Expanded(
                                                      child: Container(
                                                        child: RichText(
                                                          textAlign: TextAlign.center,
                                                          text: TextSpan(
                                                            style: TextStyle(
                                                              color: Color(0xFFA1A8B0),
                                                              fontSize: 18,
                                                            ),
                                                            children: <TextSpan>[
                                                              TextSpan(text: 'You have successfully completed the '),
                                                              TextSpan(
                                                                text: 'Days of the Week-Quiz!',
                                                                style: TextStyle(fontWeight: FontWeight.bold),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                  ),
                                                ]
                                            ),
                                          ),

                                          actions: [
                                            Column(
                                                children :[
                                                  Center(
                                                    child: ElevatedButton(
                                                      child: Text('Back to Home',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: Color(0xFFFFFFFF),
                                                        ),),
                                                      style: ButtonStyle(
                                                        fixedSize: MaterialStateProperty.all(Size(150, 50)),
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
                                                  ),
                                                  Container(
                                                    height: 40,
                                                  ),
                                                ]
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Container(
                              height:15,
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