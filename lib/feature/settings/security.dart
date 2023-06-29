import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Security extends StatefulWidget {
  createState() {
    return SecurityState();
  }
}

class SecurityState extends State<Security> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  String _selectedDate = '';

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
                          child: Text('Security',
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
                        height:50,
                      ),

                      Container(
                        height: 20,
                      ),

                    ]
                )
            ),
          )

      ),
    );
  }
}