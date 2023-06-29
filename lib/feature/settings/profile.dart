import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'edit_profile.dart';
import 'notifications.dart';
import 'privacy_policy.dart';
import 'security.dart';
import 'frequently_asked_questions.dart';


class Profile extends StatelessWidget {


  Profile();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
            ),
            child: Row(
              children: [
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded, // The icon to display
                    color: Color(0xFF147B72), // Color of the icon
                    size: 20.0, // Size of the icon
                  ),
                ),
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Back',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF147B72),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFcccccc),
                        ),
                      ),
                      Icon(
                        Icons.person, // The icon to display
                        color: Color(0xFF147B72), // Color of the icon
                        size: 70.0,
                      ),
                    ]
                ),
                SizedBox(height: 10.0),
                RichText(
                  text: TextSpan(
                    text: 'Anirudh Ravichander',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                RichText(
                  text: TextSpan(
                    text: 'anirudhravi@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ],
            ),

          ),
          SizedBox(height: 30.0),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 30.0),
                Icon(
                  Icons.edit_outlined, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0,
                ),
                SizedBox(width: 20.0),
                RichText(
                  text: TextSpan(
                    text: 'Edit Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF147B72),
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 20.0,
                ),
                SizedBox(width: 10.0),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            },
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 30.0),
                Icon(
                  Icons.notifications_outlined, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0,
                ),
                SizedBox(width: 20.0),
                RichText(
                  text: TextSpan(
                    text: 'Notifications',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF147B72),
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 20.0,
                ),
                SizedBox(width: 10.0),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifications()),
              );
            },
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 30.0),
                Icon(
                  Icons.payments_outlined, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0,
                ),
                SizedBox(width: 20.0),
                RichText(
                  text: TextSpan(
                    text: 'Payment Method',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF147B72),
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 20.0,
                ),
                SizedBox(width: 10.0),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 30.0),
                Icon(
                  Icons.security_outlined, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0,
                ),
                SizedBox(width: 20.0),
                RichText(
                  text: TextSpan(
                    text: 'Security',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF147B72),
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 20.0,
                ),
                SizedBox(width: 10.0),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Security()),
              );
            },
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 30.0),
                Icon(
                  Icons.help, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0,
                ),
                SizedBox(width: 20.0),
                RichText(
                  text: TextSpan(
                    text: 'FAQs',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF147B72),
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 20.0,
                ),
                SizedBox(width: 10.0),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FrequentlyAskedQuestions()),
              );
            },
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 30.0),
                Icon(
                  Icons.lock_outline_rounded, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0,
                ),
                SizedBox(width: 20.0),
                RichText(
                  text: TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF147B72),
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 20.0,
                ),
                SizedBox(width: 10.0),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicy()),
              );
            },
          ),

          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}