import 'package:flutter/material.dart';
import 'package:project_2/splash.dart';
import 'package:project_2/views/Screens/dashboard_screen.dart';
import 'package:project_2/views/Screens/forgot_password.dart';
import 'package:project_2/views/Screens/login_screen.dart';
import 'package:project_2/views/Screens/popup_screen.dart';
import 'package:project_2/views/Screens/tip_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/loginscreen':(context) => LoginScreen(),
        '/forgotpassword':(context) => ForgotPassword(),
        '/popupscreen':(context) => PopupScreen(),
        '/tipscreen':(context) => TipScreen(),
        '/dashboardscreen':(context) => DashboardScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash(),
    );
  }
}
