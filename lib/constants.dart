import 'package:flutter/material.dart';

const appTextTheme = TextTheme(
  bodyText1: TextStyle(fontFamily: 'SFPROregular', color: Colors.white),
  bodyText2: TextStyle(fontFamily: 'SFPROregular', color: Colors.white),
);
Map<int, Color> colorList = {
  50: const Color.fromRGBO(20, 25, 39, .1),
  100: const Color.fromRGBO(20, 25, 39, .2),
  200: const Color.fromRGBO(20, 25, 39, .3),
  300: const Color.fromRGBO(20, 25, 39, .4),
  400: const Color.fromRGBO(20, 25, 39, .5),
  500: const Color.fromRGBO(20, 25, 39, .6),
  600: const Color.fromRGBO(20, 25, 39, .7),
  700: const Color.fromRGBO(20, 25, 39, .8),
  800: const Color.fromRGBO(20, 25, 39, .9),
  900: const Color.fromRGBO(20, 25, 39, 1),
};
// ignore: constant_identifier_names, non_constant_identifier_names
var KprimaryColor = MaterialColor(0xFF141927, colorList);
var themeData = ThemeData(
  fontFamily: 'SFPROregular',
  primaryTextTheme: appTextTheme,
  textTheme: appTextTheme,
  primaryColor: KprimaryColor,
  primarySwatch: KprimaryColor,
  backgroundColor: KprimaryColor,
  scaffoldBackgroundColor: KprimaryColor,
);

// ignore: non_constant_identifier_names
buildPillButton(
    {required bool active, required String text, required IconData icon}) {
  return TextButton.icon(
    onPressed: () {},
    icon: Icon(
      icon,
      color: Colors.white,
      size: 27,
    ),
    label: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
    ),
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      )),
      backgroundColor: active
          ? MaterialStateProperty.all(Colors.blueAccent)
          : MaterialStateProperty.all(Color(0xFF21283F)),
      padding: MaterialStateProperty.all<EdgeInsets>(
        EdgeInsets.only(right: 14.0, left: 14.0),
      ),
    ),
  );
}
