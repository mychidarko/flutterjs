import 'package:flutter/material.dart';
import 'package:flutterjs/layouts/app.dart';
import 'package:flutterjs/layouts/section.dart';
import 'package:flutterjs/models/show.dart';
import 'package:flutterjs/router/routes.dart';
import 'package:flutterjs/router/widgets.dart';
import 'package:flutterjs/widgets/FJSCardCarousel.dart';
import 'package:flutterjs/widgets/MovieCard.dart';

class Home extends StatelessWidget {
  @override

  // build function which returns type: Widget
  Widget build(BuildContext context) {
    return mainLayout(
      context,
      body: ListView(
        children: [
          PageContainer(
            children: [
              SectionHeader('Trending Today'),
              linkTo(
                context,
                MovieRoute,
                params: {
                  "data": Show.find(2),
                },
                child: MovieCard(
                  data: Show.find(2),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 25.0, 0.0, 10.0),
            child: SectionHeader(
              'Just Updated',
            ),
          ),
          FJSCardCarousel(
            count: Show.all().length,
            builder: (context, index) {
              return FJSCarouselCard(
                child: MovieCard(
                  data: Show.all()[index],
                ),
                route: MovieRoute,
                params: {
                  "data": Show.all()[index],
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
