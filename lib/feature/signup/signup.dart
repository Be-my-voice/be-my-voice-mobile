import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import '../splash-screen/onboarding_four.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  createState() {
    return SignupState();
  }
}

class SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
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
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5.0, right: 20.0),
                      child: Text('Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,// Set the text color
                        ),
                      ),
                    )
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
                        height:50,
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:5 ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Enter your name',
                            prefixIcon: Icon(Icons.person_outline_sharp),
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
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:5 ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Enter your contact number',
                            prefixIcon: Icon(Icons.call_sharp),
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
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:5 ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Enter your Date of Birth',
                            prefixIcon: Icon(Icons.date_range_outlined),
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
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:5 ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Enter your email',
                            prefixIcon: Icon(Icons.email_outlined),
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
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:5 ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Enter your password',
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
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:5, bottom:5 ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            hintText: 'Enter confirm password',
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
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: 'I agree to the Be My Voice ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF717784),
                                      ),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: 'Terms of Service ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF147B72),

                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            /*Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const OnboardingFour()),
                                      );*/
                                          }),
                                  ),
                                ]
                            )
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 5.0),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'and ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF717784),
                                    ),
                                  ),

                                ),
                                RichText(
                                  text: TextSpan(
                                      text: 'Privacy Policy',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF147B72),

                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          /*Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const OnboardingFour()),
                                      );*/
                                        }),
                                ),
                              ]
                          )
                        ),
                      ),
                      Container(
                        height:40,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Text('Continue',
                            style: TextStyle(
                              color: Color(0xFF147B72),
                            ),
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(320, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
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
                              MaterialPageRoute(builder: (context) => Login()),
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