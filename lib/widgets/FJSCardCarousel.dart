import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterjs/router/widgets.dart';

class FJSCardCarousel extends StatelessWidget {
  final Function builder;
  final int count;

  final pageController = PageController(
    viewportFraction: 0.9,
    keepPage: true,
  );

  FJSCardCarousel({
    @required this.builder,
    @required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.maxFinite,
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: count,
        itemBuilder: (context, index) {
          return builder(context, index);
        },
      ),
    );
  }
}

class FJSCarouselCard extends StatelessWidget {
  final String route;
  final Object params;
  final Widget child;
  final BoxDecoration decoration;

  FJSCarouselCard({
    @required this.child,
    this.route,
    this.params,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return linkTo(
      context,
      route,
      params: params,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: child,
      ),
    );
  }
}
