import 'package:flutter/material.dart';
import 'package:flutterjs/layouts/app.dart';
import 'package:flutterjs/layouts/section.dart';
import 'package:flutterjs/models/show.dart';

class Movie extends StatelessWidget {
  final Show show;

  Movie({
    this.show,
  });

  @override
  Widget build(BuildContext context) {
    return tertiaryLayout(
      body: ListView(
        children: [
          Image.asset('images/ads/${show.media}'),
          PageContainer(
            children: [
              Text(
                'Watch ${show.title.toLowerCase()}',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                show.description,
              ),
              Row(
                children: show.genre
                    .map((genre) => Container(
                          padding: EdgeInsets.all(2.0),
                          margin: EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.red,
                          ),
                          child: Text(
                            genre,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
