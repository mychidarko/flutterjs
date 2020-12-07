import 'package:flutter/material.dart';
import 'package:flutterjs/router/router.dart';

class Profile extends StatelessWidget {
  final int _id;

  Profile(this._id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Text('Profile Screen for user $_id'),
            GestureDetector(
              child: Text('Go Back'),
              onTap: () => routeBack(context),
            )
          ],
        ),
      ),
    );
  }
}
