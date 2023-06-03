import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'onboarding_one.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardingOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Hide the status bar and navigation bar for a fullscreen splash screen

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFe2e4e3),
        ),
        home: Scaffold(
          body: Center(
            child: Material(
              child: InkWell(
                /*onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardingOne()),
                  );
                },*/

                child: Image.asset('image/splash-screen/logo.png',
                      width: 110.0, height: 110.0),

              ),
            )
          )
        )
    );
  }

}



