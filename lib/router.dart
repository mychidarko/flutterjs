// import required packages
import 'package:flutter/material.dart';
import 'helpers/constants.dart';

// import screens
import 'screens/error/error.dart';
import 'screens/home/home.dart';

// Build router
RouteFactory router() {
  return (settings) {
    // arguments is available on the settings object
    // it contains arguments to pass into a route
    // final Map<String, dynamic> arguments = settings.arguments;

    // define variable screen with a type of widget
    Widget screen;

    switch (settings.name) {
      // HomeRoute is defined in constants
      case HomeRoute:
        // set screen to Home()
        screen = Home();
        // screen = Profile(arguments['id']);
        break;
      default:
        // if no screen is matched, error
        screen = Error();
    }

    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}
