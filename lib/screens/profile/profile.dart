import 'package:flutterjs/router/router.dart';
import 'package:flutterjs/router/routes.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final int id;

  Profile(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Text('Profile Screen for user $id'),
            GestureDetector(
              child: Text('Go To Home Screen'),
              onTap: () => routeTo(context, HomeRoute, {}),
            )
          ],
        ),
      ),
    );
  }
}
