import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'saved_translations.dart';

/*class GraphData {
  final String category;
  final double percentage;
  final charts.Color color;
  GraphData(this.category, this.percentage, this.color);
} */

class StartSession extends StatefulWidget {
  createState() {
    return StartSessionState();
  }
}

class StartSessionState extends State<StartSession> {
  CameraController? _controller;
  bool _isCameraInitialized = false;
  late final List<CameraDescription> _cameras;
  bool _isRecording = false;

  int _selectedIndex = 0;

  static List<Widget> _screens = [
    Home(),
    StartSession(),
    SavedTranslations(),
    // Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => _screens[_selectedIndex]),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
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
                onTap: () {},
                child: Icon(
                  Icons.dehaze_rounded, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0, // Size of the icon
                ),
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(left: 5.0, right: 20.0),
                child: Image.asset(
                  'assets/image/splash-screen/appbar_logo.png',
                  width: 200.0,
                ),
              )),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: const Center(
                    child: Text(
                      'Start Session',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF147B72),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    'Record Yourself',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF147B72),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // Set background color
          selectedItemColor: Color(0xFF000000),
          // Set selected item color
          unselectedItemColor: Color(0xFFFFFFFF),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
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
