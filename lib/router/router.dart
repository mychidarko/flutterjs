// import required packages
import 'package:flutter/material.dart';

// import app routes
import 'routes.dart';

// Build router
/// Router
/// --------
/// Maps routes to respective screens
/// *inspired by vue router*
RouteFactory router() {
  return (settings) {
    // define variable screen with a type of widget
    Widget screen;
    Widget error;

    // Get routes with params if needed
    final Map args = settings.arguments;
    final List<Map<String, dynamic>> routes = screens(args);

    for (var i = 0; i < routes.length; i++) {
      // match error screen
      if (routes[i]['name'] == '*') {
        error = routes[i]['screen'];
        continue;
      }

      // set current screen
      if (settings.name == routes[i]['name']) {
        screen = routes[i]['screen'];
      }
    }

    // if no screen is matched, set error as main screen
    if (screen == null) {
      screen = error;
    }

    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}

// Build navigator
/// Navigate to a different screen. *Inspired by vue router*
void routeTo(BuildContext context, String route, Object params) {
  Navigator.pushNamed(context, route, arguments: params);
}
