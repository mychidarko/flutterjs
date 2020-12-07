import 'package:flutter/material.dart';
import 'package:flutterjs/router/router.dart';
import 'package:flutterjs/router/routes.dart';

class Home extends StatelessWidget {
  @override

  // build function which returns type: Widget
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Text('Homepage'),
            GestureDetector(
              child: Text('Go To Profile Screen'),
              onTap: () => routeTo(context, ProfileRoute, params: {"id": 3}),
            )
          ],
        ),
      ),
    );
  }
}
