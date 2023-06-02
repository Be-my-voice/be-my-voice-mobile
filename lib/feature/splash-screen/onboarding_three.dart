import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

class OnboardingThree extends StatelessWidget {

  Widget build(context){

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Stack(
          children: [
            Positioned(
              top: 30, // Set the desired position
              right: 20,
              child: RichText(
                textAlign: TextAlign.right,
                text: TextSpan(
                  text: 'Skip',
                  style: TextStyle( fontSize:15, color: Colors.grey,),
                ),
              ),
            ),
            Positioned(
              top: 160, // Set the desired position
              left: 35,
              child: Image.asset('image/splash-screen/screen-3.png',
                  width: 200.0, height: 180.0),
            ),
            Positioned(
                top: 370, // Set the desired position
                left: 20,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFE8FCFA),
                    ),
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),

                    child: Column(
                        children : <Widget>[
                          RichText(
                            //textAlign: TextAlign.right,
                            text: TextSpan(
                              text: '\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0Connect with the\n community seamlessly',
                              style: TextStyle( fontWeight: FontWeight.bold, fontSize:18, color: Colors.black, ),
                            ),
                          ),
                          Container(
                            height:30,
                          ),
                          Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: '- - ',
                                    style: TextStyle( fontWeight: FontWeight.bold, fontSize:18, color: Color(0xFFE8ACFA), ),
                                  ),
                                ),
                                RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(
                                    text: '- ',
                                    style: TextStyle( fontWeight: FontWeight.bold, fontSize:18, color: Color(0xFF147B72), ),
                                  ),
                                ),
                                Container(
                                  width:110,
                                ),
                                Icon(
                                  Icons.arrow_circle_right_sharp,
                                  color: Color(0xFF147B72),
                                  size: 32.0,
                                )
                              ]
                          )
                        ]

                    )
                )
            ),
          ],
        )

    );
  }
}