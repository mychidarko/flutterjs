import 'package:flutter/material.dart';
import 'package:flutterjs/layouts/app.dart';

class Movie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return tertiaryLayout(
      body: Center(
        child: Text('Anime Movie'),
      ),
    );
  }
}
