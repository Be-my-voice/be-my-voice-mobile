import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Notifications extends StatefulWidget {
  createState() {
    return NotificationsState();
  }
}

class NotificationsState extends State<Notifications> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  bool _toggleValue = false;

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

          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
                key: _formKey,
                child: ListView(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 5.0, right: 20.0),
                          child: Text('Notifications',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,// Set the text color
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height:35,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Text('Common',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF147B72),
                            fontSize: 18,// Set the text color
                          ),
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 15.0),
                            Text('General Notifications',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: _toggleValue,
                              onChanged: (value) {
                                setState(() {
                                  _toggleValue = value;
                                });
                              },
                              activeColor: Color(0xFF147B72),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 15.0),
                            Text('Sound',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: _toggleValue,
                              onChanged: (value) {
                                setState(() {
                                  _toggleValue = value;
                                });
                              },
                              activeColor: Color(0xFF147B72),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 15.0),
                            Text('Vibrate',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: _toggleValue,
                              onChanged: (value) {
                                setState(() {
                                  _toggleValue = value;
                                });
                              },
                              activeColor: Color(0xFF147B72),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFCCCCCC), // Set the border color here
                            width: 1.0, // Set the border width if desired
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Text('System and Services Update',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF147B72),
                            fontSize: 18,// Set the text color
                          ),
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 15.0),
                            Text('App Updates',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: _toggleValue,
                              onChanged: (value) {
                                setState(() {
                                  _toggleValue = value;
                                });
                              },
                              activeColor: Color(0xFF147B72),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 15.0),
                            Text('Bill Reminders',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: _toggleValue,
                              onChanged: (value) {
                                setState(() {
                                  _toggleValue = value;
                                });
                              },
                              activeColor: Color(0xFF147B72),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 15.0),
                            Text('Promotion',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: _toggleValue,
                              onChanged: (value) {
                                setState(() {
                                  _toggleValue = value;
                                });
                              },
                              activeColor: Color(0xFF147B72),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 15.0),
                            Text('Discount Available',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: _toggleValue,
                              onChanged: (value) {
                                setState(() {
                                  _toggleValue = value;
                                });
                              },
                              activeColor: Color(0xFF147B72),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 15.0),
                            Text('Payment Request',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: _toggleValue,
                              onChanged: (value) {
                                setState(() {
                                  _toggleValue = value;
                                });
                              },
                              activeColor: Color(0xFF147B72),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFCCCCCC), // Set the border color here
                            width: 1.0, // Set the border width if desired
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Text('Others',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF147B72),
                            fontSize: 18,// Set the text color
                          ),
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 15.0),
                            Text('New Service Available',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: _toggleValue,
                              onChanged: (value) {
                                setState(() {
                                  _toggleValue = value;
                                });
                              },
                              activeColor: Color(0xFF147B72),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 15.0),
                            Text('New Tips Available',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: _toggleValue,
                              onChanged: (value) {
                                setState(() {
                                  _toggleValue = value;
                                });
                              },
                              activeColor: Color(0xFF147B72),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height:20,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Text('Save Changes',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(180, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF147B72)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                    color: Color(0xFF147B72), width: 2.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupFinish()),
                            ); */
                          },
                        ),
                      ),
                      Container(
                        height:30,
                      ),

                    ]
                )
            ),
          )

      ),
    );
  }
}