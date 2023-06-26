import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import '../widgets/left_drawer.dart';


class ContactList extends StatefulWidget {
  createState() {
    return ContactListState();
  }
}

class ContactListState extends State<ContactList> {
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
                                        hintText: 'Search Contact',
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

                              },
                              child: Container(
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
                                                text:'077 1234567',
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
                                      ElevatedButton(
                                        child: Text('Invite',
                                          style: TextStyle(
                                            fontSize: 12.0, // Replace with your desired font size
                                          ),
                                        ),
                                        style: ButtonStyle(
                                          fixedSize: MaterialStateProperty.all(Size(70, 30)),
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
                                                  borderRadius: BorderRadius.circular(20.0),
                                                ),
                                                title:
                                                Column(
                                                    children : [
                                                      Container(
                                                        height: 20,
                                                      ),
                                                      Image.asset(
                                                        'assets/image/splash-screen/invitation_logo.png',
                                                        width: 150,
                                                      ),
                                                    ]
                                                ),
                                                content:
                                                SizedBox(
                                                  height: 130,
                                                  child: Column(
                                                      children: [
                                                        Expanded(
                                                            child: Container(
                                                              margin: EdgeInsets.only(left: 10.0, right: 10.0),
                                                              child: Text('Invite Friends',
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
                                                            child: Text('Connect with friends on our app. Invite & start communication today',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                color: Color(0xFFA1A8B0),
                                                                fontSize: 18,// Set the text color
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                  ),
                                                ),

                                                actions: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children :[
                                                            ElevatedButton(
                                                              child: Text('Invite',
                                                                style: TextStyle(
                                                                  fontSize: 14.0,
                                                                  color: Color(0xFFFFFFFF),
                                                                ),),
                                                              style: ButtonStyle(
                                                                fixedSize: MaterialStateProperty.all(Size(130, 50)),
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
                                                                /*Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => OngoingQuiz()),
                                                                ); */
                                                              },
                                                            ),
                                                            Container(
                                                              width: 10,
                                                            ),
                                                            ElevatedButton(
                                                              child: Text('Cancel',
                                                                style: TextStyle(
                                                                  fontSize: 14.0,
                                                                  color: Color(0xFFFFFFFF),
                                                                ),),
                                                              style: ButtonStyle(
                                                                fixedSize: MaterialStateProperty.all(Size(130, 50)),
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
                                                                /*Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => OngoingQuiz()),
                                                                ); */
                                                              },
                                                            ),

                                                          ]
                                                      ),
                                                      Container(
                                                        height: 45,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                      ),

                                    ]
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: () {

                              },
                              child: Container(
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
                                                text:'077 1234567',
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

                                    ]
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: () {

                              },
                              child: Container(
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
                                                text:'077 1234567',
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