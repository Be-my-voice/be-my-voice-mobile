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
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.more_vert, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 20.0, // Size of the icon
                ),
              ),

            ],
          ),
        ),


        body: Padding(
            padding: EdgeInsets.all(5.0),
            child: ListView(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {

                              },
                              child:RichText(
                                text: TextSpan(
                                  text: 'Contacts',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xFF147B72),
                                  ),
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
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
                  Container(
                    height:15,
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