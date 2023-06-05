import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import '../login/login.dart';

class CreateNewPassword extends StatefulWidget {
  createState() {
    return CreateNewPasswordState();
  }
}

class CreateNewPasswordState extends State<CreateNewPassword> {
  final _formKey = GlobalKey<FormState>();

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
                    color: Colors.black, // Color of the icon
                    size: 20.0, // Size of the icon
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
                      Container(
                        height:30,
                      ),
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text('Create New Password',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,// Set the text color
                              ),
                            ),
                          )
                      ),
                      Container(
                        height:15,
                      ),
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text('Create your new password to login',
                              style: TextStyle(
                                color: Color(0xFFA1A8B0),
                                fontSize: 16,// Set the text color
                              ),
                            ),
                          )
                      ),
                      Container(
                        height:15,
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:5 ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Enter password',
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            // Handle text changes
                          },
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:5 ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Confirm password',
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            // Handle text changes
                          },
                        ),
                      ),
                      Container(
                        height:30,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Text('Create Password'),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(320, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF147B72)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25), // Set border radius
                              ),
                            ),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0), // Set the desired border radius here
                                  ),
                                  title:
                                  Column(
                                      children : [
                                        Container(
                                          height: 20,
                                        ),
                                        Icon(
                                          Icons.check_rounded,
                                          size: 48.0,
                                          color: Color(0xFF147B72),
                                        ),
                                      ]
                                  ),
                                  content:
                                  SizedBox(
                                    height: 150,
                                    child: Column(
                                        children: [
                                          Expanded(
                                              child: Container(
                                                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                                                child: Text('Success',
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
                                                child: Text('You have successfully reset your password.',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFFA1A8B0),
                                                    fontSize: 18,// Set the text color
                                                  ),
                                                ),
                                              )
                                          ),
                                        ]
                                    ),
                                  ),

                                  actions: [
                                    Column(
                                        children :[
                                          Center(
                                            child: ElevatedButton(
                                              child: Text('Login'),
                                              style: ButtonStyle(
                                                fixedSize: MaterialStateProperty.all(Size(150, 50)),
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
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => Login()),
                                                );
                                              },
                                            ),
                                          ),
                                          Container(
                                            height: 40,
                                          ),
                                        ]
                                    )


                                  ],
                                );
                              },
                            );
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