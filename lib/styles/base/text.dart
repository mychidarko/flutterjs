import 'package:flutter/material.dart';

// Font sizes used in app
const TextXl = 30.0;
const TextLg = 26.0;
const TextMd = 20.0;
const TextDefault = 16.0;
const TextSm = 20.0;

const String FontNameDefault = 'Segoe';

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: TextMd,
  color: Colors.black,
);

const TitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: TextLg,
  color: Colors.black,
);

const PrimaryBodyTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: TextDefault,
  color: Colors.black,
);

const PrimaryHeadingTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: TextMd,
  color: Colors.black,
);

// ignore: non_constant_identifier_names
var SectionHeaderTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: Colors.grey[700],
);

// ignore: non_constant_identifier_names
var SectionSubHeaderTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: Colors.grey[600],
);
