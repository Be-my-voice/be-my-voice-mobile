import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class LeftDrawer extends StatelessWidget {


  LeftDrawer();

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
                  Icons.person, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0,
                ),
                SizedBox(width: 10.0),
                RichText(
                  text: TextSpan(
                    text: 'Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF147B72),
                    ),
                  ),
                ),
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
                  Icons.help, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0,
                ),
                SizedBox(width: 10.0),
                RichText(
                  text: TextSpan(
                    text: 'Help',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF147B72),
                    ),
                  ),
                ),
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
                  Icons.settings, // The icon to display
                  color: Color(0xFF147B72), // Color of the icon
                  size: 30.0,
                ),
                SizedBox(width: 10.0),
                RichText(
                  text: TextSpan(
                    text: 'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF147B72),
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 20.0),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 15.0),
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout_rounded, // The icon to display
                          color: Color(0xFFFFFFFF), // Color of the icon
                          size: 30.0,
                        ),
                        Text('Log out',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(220, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF147B72)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Set border radius
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}