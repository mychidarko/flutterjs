// This file tries to use a SASS setting
// import required modules
import 'package:flutter/material.dart';

// import individual modules
import 'base/text.dart';

// build theme styles
ThemeData styles() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(headline6: AppBarTextStyle),
    ),
    primarySwatch: Colors.lightBlue,
    textTheme: TextTheme(
      headline6: TitleTextStyle,
      bodyText2: PrimaryBodyTextStyle,
      headline5: PrimaryHeadingTextStyle, 
    )
  );
}
