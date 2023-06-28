import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import '../widgets/bottom_nav.dart';


class Chat extends StatefulWidget {
  createState() {
    return ChatState();
  }
}

class ChatState extends State<Chat> {
  final _formKey = GlobalKey<FormState>();
  int _currentIndex = 2;
  int _selectedIndex = 2;
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
        backgroundColor: Color(0xFFE8F3F1),

        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF147B72), size: 30.0),
          backgroundColor: Color(0xFFFFFFFF),
          title: Row(
            children: [
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
              SizedBox(
                width: 20,
              ),
              Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFcccccc),
                      ),
                    ),
                    Icon(
                      Icons.person, // The icon to display
                      color: Color(0xFF147B72), // Color of the icon
                      size: 20.0,
                    ),
                  ]
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text:'Harry Potter',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text:'077 1234567',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF147B72),
                        ),
                      ),
                    ),
                  ]
              ),
              Spacer(),
              /*GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        contentPadding: EdgeInsets.only(top: 0),
                        title: Text('Alert Dialog'),
                        content: Text('This is an example dialog.'),
                        actions: [
                          // Dialog actions
                        ],
                      );
                    },
                  );
                },
                child: Icon(
                  Icons.more_vert, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 20.0, // Size of the icon
                ),
              ), */
              PopupMenuButton<String>(
                child: Icon(
                  Icons.more_vert, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 20.0, // Size of the icon
                ),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem<String>(
                    value: 'View Contact',
                    child: Text('View Contact'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Media',
                    child: Text('Media'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Search',
                    child: Text('Search'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Mute Notifications',
                    child: Text('Mute Notifications'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Clear Chat',
                    child: Text('Clear Chat'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Wallpaper',
                    child: Text('Wallpaper'),
                  ),
                ],
              ),

            ],
          ),
        ),


        body: Padding(
            padding: EdgeInsets.all(5.0),
            child: ListView(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10.0),
                      Expanded(
                        child : Form(
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
                                        hintText: 'Message ...',
                                        prefixIcon: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xFF147B72),
                                                ),
                                              ),
                                              Icon(
                                                Icons.camera_alt_rounded, // The icon to display
                                                color: Color(0xFFFFFFFF), // Color of the icon
                                                size: 20.0,
                                              ),
                                            ]
                                        ),
                                        suffixIcon: Icon(
                                          Icons.arrow_circle_right, // The icon to display
                                          color: Color(0xFF147B72), // Color of the icon
                                          size: 35.0,
                                        ),
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
                      ),
                      SizedBox(width: 10.0),
                    ],
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: Text('May 07',
                                style: TextStyle(
                                  fontSize: 10.0, // Replace with your desired font size
                                ),
                              ),
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(Size(100, 10)),
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

                              },
                            ),
                          ]
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top:5.0, bottom: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF147B72),
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
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 10.0),
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
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top:5.0, bottom: 5.0),
                            decoration: BoxDecoration(
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
                                      text:'Good morning!',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10.0),
                    child: RichText(
                      text: TextSpan(
                        text:'07.31PM',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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