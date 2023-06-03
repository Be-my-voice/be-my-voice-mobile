import 'package:flutter/material.dart';

class OnboardingFour extends StatelessWidget {
  const OnboardingFour({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFe5e5e5),
        ),
        home: Stack(
          children: [
            Positioned(
              top: 140, // Set the desired position
              left: 88,
              child: Image.asset('assets/image/splash-screen/logo_splash_4.png',
                  width: 110.0, height: 110.0),
            ),
            Positioned(
                top: 270, // Set the desired position
                left: 20,
                child: Container(
                    padding: EdgeInsets.all(16.0),
                    margin:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                    child: Column(children: <Widget>[
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Let\'s get started!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 15,
                      ),
                      RichText(
                        text: TextSpan(
                          text:
                              'Unlock the complete experience!\n \u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0Sign in to explore',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFAAAAAA),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Text('Login'),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(200, 40)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF147B72)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Set border radius
                              ),
                            ),
                          ),
                          onPressed: () {
                            /*Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => OnboardingOne()),
                                ); */
                          },
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Color(0xFF147B72),
                              fontWeight: FontWeight.bold, // Set the text color
                            ),
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(200, 40)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFFFFFF)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                    color: Color(0xFF147B72), width: 2.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            /*Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => OnboardingOne()),
                                );*/
                          },
                        ),
                      ),
                    ]))),
          ],
        ));
  }
}
