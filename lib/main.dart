// import required packages
import 'package:flutter/material.dart';

// import app files
import 'helpers/constants.dart';
import 'assets/styles/app.dart';
import 'router.dart';

// Entry point to your dart app
// This is like your root node in HTML/JS
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppName,
      // styles are defined in assets/styles
      theme: styles(),
      // open router.dart to configure routes
      onGenerateRoute: router(),
    );
  }
}
