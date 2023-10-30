import '../home-screens/home.dart';
import '../learn/list_of_lessons.dart';
import 'package:flutter/widgets.dart';
import '../video-chat/initial_page.dart';
import '../camera/scan_qr_code.dart';

List<Widget> screens = [
  Home(),
  ScanQrCode(),
  ListOfLessons(),
  InitialPage(),
];