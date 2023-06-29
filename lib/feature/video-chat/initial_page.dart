import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'chat_list.dart';
import 'contact_list.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/left_drawer.dart';
import '../widgets/screens.dart';


class InitialPage extends StatefulWidget {
  createState() {
    return InitialPageState();
  }
}

class InitialPageState extends State<InitialPage> {
  final _formKey = GlobalKey<FormState>();
  int _currentIndex = 2;

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
                                        hintText: 'Search Chat',
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
                      ),

                      SizedBox(width: 5.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ContactList()),
                          );
                        },
                        child:Column(
                          children: [
                            Container(height: 10),
                            Icon(
                              Icons.contacts, // The icon to display
                              color: Color(0xFF147B72), // Color of the icon
                              size: 30.0, // Size of the icon
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ChatList()),
                                );
                              },
                              child:RichText(
                                text: TextSpan(
                                  text: 'Chats',
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
                                  RichText(
                                    text: TextSpan(
                                      text: 'No chats to display',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.bold,
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
                                  RichText(
                                    text: TextSpan(
                                      text: 'Your ongoing chats will be',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: ' displayed here',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Container(
                              height:25,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/image/splash-screen/speech_bubble.png',
                                    width: 180,
                                  ),
                                ]
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Select a contact &',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF147B72),
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'let\'s start chatting !',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF147B72),
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Container(
                              height: 50,
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