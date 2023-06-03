import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import '../splash-screen/onboarding_four.dart';

class Login extends StatefulWidget {
  createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
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
            elevation: 0,
            backgroundColor: Color(0xFFFFFFFF),
            title: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded, // The icon to display
                  color: Colors.black, // Color of the icon
                  size: 15.0, // Size of the icon
                ), // Icon widget
                SizedBox(width: 90.0), // Add some spacing between the icon and text
                Text('Login',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,// Set the text color
                  ),
                ),

              ],
            ),
          ),

          body: Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                          hintText: 'Enter your email',
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        onChanged: (value) {
                          // Handle text changes
                        },
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Text('Login'),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(200, 40)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF147B72)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // Set border radius
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