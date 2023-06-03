import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'onboarding_four.dart';
import 'onboarding_two.dart';

class OnboardingOne extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
        body: MaterialApp(
            theme: ThemeData(
              backgroundColor: Color(0xFFffffff), // Set the background color
            ),
            debugShowCheckedModeBanner: false,
            home: ListView(
              children: [
                Container(
                  height: 40.0,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(30.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                          text: 'Skip',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,

                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OnboardingFour()),
                              );
                            }),
                    ),
                  ),// Set the desired position

                ),
                Container(
                  height: 60.0,
                ),
                Container(
                    child: Center(
                        child: Image.asset('assets/image/splash-screen/screen-1.png',
                          width: 260.0, ),
                    )
                  ),
                Container(
                  height: 30.0,
                ),
                Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFE8FCFA),
                    ),
                    padding: EdgeInsets.all(30.0),
                      margin:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                        child: Column(children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text:
                              'Effortless sign language\n \u00A0\u00A0\u00A0\u00A0to voice translation',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                          ),
                          Container(
                            child: Center(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(
                                      text: '- ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Color(0xFF147B72),
                                      ),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: '- - ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Color(0xFFE8CCFA),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 180,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OnboardingTwo()),
                                      );
                                    },
                                    child: Icon(
                                      Icons.arrow_circle_right_sharp,
                                      color: Color(0xFF147B72),
                                      size: 50.0,
                                    ),
                                  ),
                                ])
                            )
                          ),

                        ])),
              ],
            )
        )
        );
  }
}
