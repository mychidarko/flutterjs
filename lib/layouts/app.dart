import 'package:flutter/material.dart';
import 'package:flutterjs/helpers/constants.dart';
import 'package:flutterjs/router/routes.dart';
import 'package:flutterjs/router/widgets.dart';

Drawer appDrawer(context) {
  return Drawer(
    child: ListView(
      children: [
        linkTo(
          context,
          ProfileRoute,
          params: {"id": 3},
          child: Text('Profile'),
        ),
      ],
    ),
  );
}

BottomNavigationBar bottomNavBar() {
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'Your Library',
      ),
    ],
  );
}

Widget customLayout(context, {String title, Widget body}) {
  return Scaffold(
    drawer: appDrawer(context),
    body: body,
    bottomNavigationBar: bottomNavBar(),
  );
}

Widget mainLayout(context, {String title, Widget body}) {
  return Scaffold(
    appBar: AppBar(
      title: Text(title ?? AppName),
      centerTitle: true,
    ),
    drawer: appDrawer(context),
    body: body,
    bottomNavigationBar: bottomNavBar(),
  );
}

Widget drawerLayout(context, {String title, Widget body}) {
  return Scaffold(
    drawer: appDrawer(context),
    body: body,
  );
}

Widget tertiaryLayout({String title, Widget body}) {
  return Scaffold(
    appBar: AppBar(
      title: Text(title ?? AppName),
      centerTitle: true,
    ),
    body: body,
  );
}

Widget plainLayout({String title, Widget body}) {
  return Scaffold(
    body: body,
  );
}
