// import required packages
import 'package:flutter/material.dart';

// import app files
import 'helpers/constants.dart';
import 'styles/app.dart';
import 'router/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppName,
      theme: styles(),
      onGenerateRoute: router(),
      debugShowCheckedModeBanner: false,
    );
  }
}
