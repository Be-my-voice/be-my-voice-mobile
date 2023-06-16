import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';


class ListOfSubLessons extends StatefulWidget {
  createState() {
    return ListOfSubLessonsState();
  }
}

class ListOfSubLessonsState extends State<ListOfSubLessons> {

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
                            RichText(
                              text: TextSpan(
                                text:
                                'Saved translations',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xFF147B72),
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                            ),
                            RichText(
                              text: TextSpan(
                                text:
                                '29.05.2023',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF147B72),
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
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(0, 6), // Offset of the shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFFFFFFFF),
                                ),
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text:'Good morning! I am from Colombo.',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 5,
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: RichText(
                                          text: TextSpan(
                                            text:'07.30PM',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF000000),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      )
                                    ]
                                ),
                              ),

                            ),

                            Container(
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
                              ),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text:'Good morning! I am from Colombo.',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: RichText(
                                        text: TextSpan(
                                          text:'09.32PM',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF000000),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ]
                              ),
                            ),

                            Container(
                              height: 20,
                            ),
                            RichText(
                              text: TextSpan(
                                text:
                                '25.05.2023',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF147B72),
                                ),
                              ),
                            ),

                            Container(
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
                              ),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text:'Good morning! I am from Colombo.',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: RichText(
                                        text: TextSpan(
                                          text:'06.40AM',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF000000),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ]
                              ),
                            ),

                            Container(
                              height: 20,
                            ),
                            RichText(
                              text: TextSpan(
                                text:
                                '24.05.2023',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF147B72),
                                ),
                              ),
                            ),

                            Container(
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
                              ),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text:'Good morning! I am from Colombo.',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: RichText(
                                        text: TextSpan(
                                          text:'06.40AM',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF000000),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ]
                              ),
                            ),
                            Container(
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
                              ),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text:'Good morning! I am from Colombo.',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: RichText(
                                        text: TextSpan(
                                          text:'06.42AM',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF000000),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ]
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