import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light, 
        primarySwatch: Colors.purple,
      ),
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context)=>Homepage(),
        "/login":(context)=>LoginPage(),
      },
    );  
  }
}
