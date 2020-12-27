import 'package:flutter/material.dart';
import 'package:flutterjs/layouts/app.dart';
import 'package:flutterjs/layouts/section.dart';
import 'package:flutterjs/router/routes.dart';
import 'package:flutterjs/widgets/FJSCardCarousel.dart';
import 'package:flutterjs/widgets/MovieCard.dart';

class Home extends StatelessWidget {
  @override

  // build function which returns type: Widget
  Widget build(BuildContext context) {
    return mainLayout(
      context,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 25.0, 0.0, 10.0),
            child: SectionHeader('Just Updated'),
          ),
          FJSCardCarousel(
            builder: (context, index) {
              return FJSCarouselCard(
                child: MovieCard(),
                route: MovieRoute,
              );
            },
          ),
          // PageContainer(
          //   children: [

          //   ],
          // ),
        ],
      ),
    );
  }
}
