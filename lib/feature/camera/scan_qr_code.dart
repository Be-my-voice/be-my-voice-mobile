import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
//import 'package:charts_flutter/flutter.dart' as charts;
import '../learn/list_of_lessons.dart';
import '../camera/camera.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/left_drawer.dart';
import '../widgets/screens.dart';
import 'session_start_view.dart';
import 'package:qr_flutter/qr_flutter.dart';


/*class GraphData {
  final String category;
  final double percentage;
  final charts.Color color;
  GraphData(this.category, this.percentage, this.color);
} */

class ScanQrCode extends StatefulWidget {
  createState() {
    return ScanQrCodeState();
  }
}

class ScanQrCodeState extends State<ScanQrCode> {
  /*final data = [
    GraphData('Category 1', 40, charts.Color.fromHex(code: '#FF0000')),
    GraphData('Category 2', 30, charts.Color.fromHex(code: '#00FF00')),
    GraphData('Category 3', 20, charts.Color.fromHex(code: '#0000FF')),
  ]; */


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
                  Container(
                    height:5,
                  ),

                  //Welcome topic
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Scan QR code',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
                      child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Please join the session by scanning ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFFA1A8B0),
                                ),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'the QR code provided',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFFA1A8B0),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),

                  //First box to open camera
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
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 15.0),
                              child: ElevatedButton(
                                child: Text(
                                  '02:00',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFF147B72),
                                    fontWeight: FontWeight.bold, // Set the text color
                                  ),
                                ),
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(Size(120, 50)),
                                  backgroundColor: MaterialStateProperty.all<Color>(
                                      Color(0xFFFFFFFF)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Color(0xFF147B72), width: 1.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  /*Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ListOfQuizzes()),
                                    ); */
                                 },
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 15.0, bottom: 40.0),
                                child: QrImage(
                                  data: 'This is Be My Voice QR',
                                  version: QrVersions.auto,
                                  size: 200.0, // Set the size of the QR code
                                ),
                            ),
                            /*Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 15.0),
                              child: ElevatedButton(
                                child: Text(
                                  'QR code',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFF147B72),
                                    fontWeight: FontWeight.bold, // Set the text color
                                  ),
                                ),
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(Size(120, 50)),
                                  backgroundColor: MaterialStateProperty.all<Color>(
                                      Color(0xFFFFFFFF)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Color(0xFF147B72), width: 1.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  /*Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ListOfQuizzes()),
                                    ); */
                                },
                              ),
                            ), */
                            /*Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 5.0, right: 20.0),
                                  child: Image.asset('assets/image/splash-screen/QR_code.png',
                                    width: 200.0, ),
                                )
                            ), */


                          ]
                      )
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15.0),
                    child: ElevatedButton(
                      child: Text(
                        'Generate new QR code',
                        style: TextStyle(
                        color: Color(0xFF147B72),
                        fontWeight: FontWeight.bold, // Set the text color
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(230, 50)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFFFFFFFF)),
                          shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(
                              color: Color(0xFF147B72), width: 1.0),
                            ),
                          ),
                      ),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SessionStartView()),
                        );
                      },
                    ),
                  ),

                ]
            )
        ),


        /*bottomNavigationBar: BottomNavigationBar(// Set background color
          selectedItemColor: Color(0xFF000000), // Set selected item color
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
        ), */

      ),
    );
  }
}