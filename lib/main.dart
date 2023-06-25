import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'feature/splash-screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getPermission();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

Future<void> getPermission() async {
  // var status = await Permission.camera.status;
  // if (status.isDenied) {
  //   await Permission.camera.request();
  // }

  Map<Permission, PermissionStatus> statuses = await [
    Permission.camera,
    Permission.microphone,
    Permission.location,
    Permission.storage,
    Permission.accessMediaLocation,
    Permission.mediaLibrary,
    Permission.photos,
    Permission.contacts,
    Permission.notification,
  ].request();

  statuses.values.forEach((element) {
    if (element.isDenied) {
      // handle the denied state
    } else if (element.isGranted) {
      // handle the granted state
    } else {
      // handle the unknown state
    }
  });
}
