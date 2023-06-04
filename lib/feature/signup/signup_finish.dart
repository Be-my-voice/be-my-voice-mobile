import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../login/login.dart';

class SignupFinish extends StatefulWidget {
  createState() {
    return SignupFinishState();
  }
}

class SignupFinishState extends State<SignupFinish> {
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
                        height:120,
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Choose your Subscription Type',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ]
                            )
                        ),
                      ),
                      Container(
                        height:30,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Text('Go Premium',
                            style: TextStyle(
                              color: Color(0xFF147B72),
                            ),
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(220, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFF4C985)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10),
                              ),
                            ),
                          ),
                          onPressed: () {

                          },
                        ),
                      ),
                      Container(
                        height:30,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Text('Start for free',
                            style: TextStyle(
                              color: Color(0xFF147B72),
                            ),
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(220, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFFFFFF)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                    color: Color(0xFF147B72), width: 1.0),
                              ),
                            ),
                          ),
                          onPressed: () {

                          },
                        ),
                      ),
                      Container(
                        height:50,
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
                          child: Text('Finish'),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(320, 50)),
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
                                                  child: Text('Your account has been successfully registered',
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