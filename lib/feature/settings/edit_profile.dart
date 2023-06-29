import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class EditProfile extends StatefulWidget {
  createState() {
    return EditProfileState();
  }
}

class EditProfileState extends State<EditProfile> {
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
                            child: Text('Edit Profile',
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
                        margin: EdgeInsets.only(left: 15.0),
                        child: Text('Name',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF147B72),
                            fontSize: 18,// Set the text color
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:15 ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Enter your name',
                            prefixIcon: Icon(Icons.person_outline_sharp),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            // Handle text changes
                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Text('Phone Number',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF147B72),
                            fontSize: 18,// Set the text color
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:15 ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Enter your contact number',
                            prefixIcon: Icon(Icons.call_sharp),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            // Handle text changes
                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Text('Email',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF147B72),
                            fontSize: 18,// Set the text color
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:15 ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Enter your email',
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            // Handle text changes
                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Text('Date of Birth',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF147B72),
                            fontSize: 18,// Set the text color
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:15 ),
                        child: ElevatedButton(
                          child: Row(
                            children: [
                              Icon(Icons.date_range_outlined,
                                color: Color(0xFF888888),
                              ),
                              SizedBox(width: 10.0),
                              //Text(_selectedDate),
                              Text('Enter your Date of Birth',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xFF888888),
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            DatePicker.showDatePicker(
                              context,
                              showTitleActions: true,
                              onConfirm: (date) {
                                setState(() {
                                  _selectedDate = date.toString();
                                });
                              },
                              currentTime: DateTime.now(),
                            );
                          },
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(180, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                                side: BorderSide(
                                    color: Color(0xFF888888), width: 1.0),
                              ),
                            ),
                          ),
                        ),
                      ),


                      Container(
                        height:70,
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