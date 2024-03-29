import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';


class SavedTranslations extends StatefulWidget {
  createState() {
    return SavedTranslationsState();
  }
}

class SavedTranslationsState extends State<SavedTranslations> {

  int _selectedIndex = 0;
  bool _isMenuOpen = false;

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
          backgroundColor: Color(0xFFFFFFFF),
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isMenuOpen = !_isMenuOpen;
                  });
                },
                child: Icon(
                  Icons.dehaze_rounded, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0, // Size of the icon
                ),
              ),
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
        drawer: _isMenuOpen ? Drawer(
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Menu Header'),
              ),
              ListTile(
                title: Text('Menu Item 1'),
                onTap: () {
                  // Handle menu item 1 tap
                },
              ),
              ListTile(
                title: Text('Menu Item 2'),
                onTap: () {
                  // Handle menu item 2 tap
                },
              ),
              // Add more menu items as needed
            ],
          ),
        ) : null,

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
                    height:5,
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
                                  fontSize: 20,
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
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0), // Set the desired border radius here
                                      ),
                                      title:
                                      Column(
                                          children : [
                                            Container(
                                              height: 5,
                                            ),
                                            Container(
                                              alignment: Alignment.centerRight,
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Icon(
                                                  Icons.close,
                                                  size: 20.0,
                                                  color: Color(0xFF555555),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                      content: SizedBox(
                                        height: 120,
                                        child: Column(
                                            children: [
                                              Expanded(
                                                  child: Container(
                                                    child: Text('Good morning! I am from Colombo. I want to catch a bus to go to my hometown',
                                                      style: TextStyle(
                                                        color: Color(0xFF000000),
                                                        fontSize: 15,// Set the text color
                                                      ),
                                                    ),
                                                  )
                                              ),
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        text:'29.05.2023 (Monday)',
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 10,
                                                          color: Color(0xFF000000),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: middleWidth),
                                                    RichText(
                                                      text: TextSpan(

                                                        text:'07.30PM',
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 10,
                                                          color: Color(0xFF000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ]
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),

                                    );
                                  },
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
                                                fontSize: 12,
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
                                            fontSize: 12,
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
                                            fontSize: 12,
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
                                            fontSize: 12,
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
                                            fontSize: 12,
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