import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'create_new_password.dart';

class ResetPasswordVerifyCode extends StatefulWidget {
  createState() {
    return ResetPasswordVerifyCodeState();
  }
}

class ResetPasswordVerifyCodeState extends State<ResetPasswordVerifyCode> {
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
                            child: Text('Enter Verification Code',
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
                            child: Text('Enter code that we have sent to your email',
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
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                maxLength: 1,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 5.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (value) {
                                  // Handle text changes
                                },
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: TextFormField(
                                maxLength: 1,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 5.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (value) {

                                },
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: TextFormField(
                                maxLength: 1,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 5.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (value) {

                                },
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: TextFormField(
                                maxLength: 1,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 5.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (value) {

                                },
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: TextFormField(
                                maxLength: 1,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 5.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (value) {

                                },
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: TextFormField(
                                maxLength: 1,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 5.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (value) {

                                },
                              ),
                            ),
                          ]
                        )
                      ),

                      Container(
                        height:25,
                      ),

                      Center(
                        child: ElevatedButton(
                          child: Text('Verify'),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CreateNewPassword()),
                            );
                          },
                        ),
                      ),
                      Container(
                        height:30,
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 30.0, right: 30.0),
                            child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Didn\'t receive the code? ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF717784),
                                      ),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: 'Resend',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF147B72),

                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {

                                          }
                                    ),
                                  ),
                                ]
                            )
                        ),
                      ),

                    ]
                )
            ),
          )

      ),
    );
  }
}