import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import '../widgets/left_drawer.dart';
import 'contact_list.dart';
import 'chat.dart';


class ChatList extends StatefulWidget {
  createState() {
    return ChatListState();
  }
}

class ChatListState extends State<ChatList> {
  final _formKey = GlobalKey<FormState>();
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
                            /*Container(
                              height: 10,
                            ), */

                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Chat()),
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
                                child: Row(
                                    children: [
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
                                      Container(
                                        width: 15,
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
                                                  color: Color(0xFF147B72),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text:'Good morning !',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: 5,
                                        )
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.mark_email_unread,
                                              color: Color(0xFF147B72),
                                              size: 20.0,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text:' 07.30',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.bold,
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
                                child: Row(
                                    children: [
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
                                      Container(
                                        width: 15,
                                      ),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text:'Jennifer Lopez',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF147B72),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text:'Coming today ?',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                      Expanded(
                                          child: Container(
                                            width: 5,
                                          )
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.mark_email_unread,
                                              color: Color(0xFF147B72),
                                              size: 20.0,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text:' 06.50',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.bold,
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
                                child: Row(
                                    children: [
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
                                      Container(
                                        width: 15,
                                      ),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text:'Thejana Akmeemana',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF147B72),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text:'Good morning !',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                      Expanded(
                                          child: Container(
                                            width: 5,
                                          )
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: Column(
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text:' ',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text:' 07.30',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.bold,
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
              backgroundColor: Color(0xFF147B72),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: ' ',
              backgroundColor: Color(0xFF147B72),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups_outlined),
              label: ' ',
              backgroundColor: Color(0xFF147B72),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}