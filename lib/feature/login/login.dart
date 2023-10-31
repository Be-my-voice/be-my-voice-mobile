import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import '../splash-screen/onboarding_four.dart';
import '../signup/signup.dart';
import '../reset-password/reset_password_email.dart';
import '../home-screens/home.dart';

class Login extends StatefulWidget {
  createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnboardingFour()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded, // The icon to display
                    color: Colors.black, // Color of the icon
                    size: 20.0, // Size of the icon
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 130.0, right: 20.0),
                  child: Text('Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,// Set the text color
                    ),
                  ),
                )


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
                          controller: _emailController,
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
                        margin: EdgeInsets.only(left:15.0, right:15.0,top:10, bottom:5 ),
                        child: TextFormField(
                          controller: _passwordController,
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
                        height: 20,
                        margin: EdgeInsets.only(right:30),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: RichText(
                            text: TextSpan(
                                text: 'Forgot password?',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF147B72),

                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ResetPasswordEmail()),
                                      );
                                    }
                                  ),
                          ),
                        ),// Set the desired position
                      ),
                      Container(
                        height:30,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Text('Login'),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(320, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF147B72)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25), // Set border radius
                              ),
                            ),
                          ),
                          onPressed: () async {
                            String emailFieldValue = _emailController.text;
                            String passwordFieldValue = _passwordController.text;
                            if ((emailFieldValue == "thejanaakmeemana@gmail.com") && (passwordFieldValue == "thejana")) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            }else{
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    title:
                                    Column(
                                        children: [
                                          Container(
                                            height: 20,
                                          ),
                                          Text("Incorrect credentials !"),
                                        ]
                                    ),);
                                },);
                            }
                          }
                        ),
                      ),
                      Container(
                        height:30,
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 30.0, right: 30.0),
                          child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Don\'t have an account? ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF717784),
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: 'Sign up',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF147B72),

                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Signup()
                                            ),
                                          );
                                        }
                                  ),
                                ),
                              ]
                          )
                      ),
                      Container(
                        height:20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1.0,
                                width:140,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFF717784),
                                  ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: ' OR ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF717784),
                                  ),
                                ),
                              ),
                              Container(
                                height: 1.0,
                                width:140,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFF717784),
                                    //width: 2.0,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                      Container(
                        height:20,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Row(
                            children: [
                              Text(' G',
                                style: TextStyle(
                                  color: Color(0xFFAA0000),
                                  fontSize: 24,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 60.0),
                                child: Text('Sign in with Google',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              )
                            ]
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(320, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                  color: Color(0xFF717784),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PythonButton()),
                            );*/
                          },
                        ),
                      ),
                      Container(
                        height:20,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Row(
                              children: [
                                Icon(
                                  Icons.apple_sharp,
                                  size: 32,
                                  color: Colors.black,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 60.0),
                                  child: Text('Sign in with Apple',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                )
                              ]
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(320, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                  color: Color(0xFF717784),
                                  width: 1.0,
                                ),
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
                        height:20,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Row(
                              children: [
                                Icon(
                                  Icons.facebook_sharp,
                                  size: 32,
                                  color: Colors.blue,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 60.0),
                                  child: Text('Sign in with Facebook',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                )
                              ]
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(320, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                  color: Color(0xFF717784),
                                  width: 1.0,
                                ),
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

                    ]
                )
              ),
          )

        ),
    );
  }
}