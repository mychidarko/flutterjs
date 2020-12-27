import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterjs/assets/styles/app.dart';
import 'package:flutterjs/assets/styles/constants.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  SectionHeader(this.title, {this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textStyles(context).headline1,
          ),
          (subtitle != null)
              ? Text(
                  subtitle,
                  style: textStyles(context).subtitle1,
                )
              : Container(),
        ],
      ),
    );
  }
}

class PageSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget child;

  PageSection({@required this.title, this.subtitle, @required this.child});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      children: [
        SectionHeader(title, subtitle: subtitle),
        child,
      ],
    );
  }
}

class PageContainer extends StatelessWidget {
  final List<Widget> children;

  PageContainer({@required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: bodyPaddingY,
        horizontal: bodyPaddingX,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
