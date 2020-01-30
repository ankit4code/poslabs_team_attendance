import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences prefs;

const kLabelGrey = Color(0xff7b7b7b);
const kHintColor = Color(0xffbababa);
const kAccentColor = Color(0xff374799);
const kThemeRed = Color(0xffD0021B);

const kThemeBlue = Color(0xff46D2FD);
const kThemeBlueDark = Color(0xff5351F0);
const kLightBlack = Color(0xff293340);

const kTextFieldStyle = TextStyle(fontSize: 18.0, color: kLabelGrey);
const kCardLabelStyle = TextStyle(color: kHintColor, fontSize: 15.0);

final kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: strMobNum,
  contentPadding:
  const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 8.0),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(25.7),
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(25.7),
  ),
);

final kBoxBorder = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: kHintColor),
  borderRadius: BorderRadius.circular(30),
);

final kInnerDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(32),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(colors: [kThemeBlue, kThemeBlueDark]),
  border: Border.all(
    color: kHintColor,
  ),
  borderRadius: BorderRadius.circular(32),
);

const strMobNum = "Mobile Number";
const strEmailAddrs = "Email Address";
