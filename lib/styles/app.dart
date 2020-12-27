// This file tries to use a SASS setting
// import required modules
import 'package:flutter/material.dart';

// import individual modules
import 'base/text.dart';
import 'layouts/appbar.dart';

/// Styles
/// ---------
/// Build all app styles. *Inspired by SASS*
ThemeData styles() {
  return ThemeData(
    appBarTheme: AppBarStyles,
    primarySwatch: Colors.lightBlue,
    textTheme: TextTheme(
      headline1: SectionHeaderTextStyle,
      bodyText2: PrimaryBodyTextStyle,
      headline5: PrimaryHeadingTextStyle,
      headline6: TitleTextStyle,
      subtitle1: SectionSubHeaderTextStyle,
    ),
  );
}

/// Get Text themes
/// usage: `textStyles.headline6`
TextTheme textStyles(BuildContext context) {
  return Theme.of(context).textTheme;
}
