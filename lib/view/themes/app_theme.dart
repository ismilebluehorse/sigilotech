import 'package:flutter/material.dart';

class AppTheme {
  // !Font
  static const String primaryFont = "inter";

  static Color lightPrimaryColor = Colors.green.shade300;
  static const Color yellow = Color(0xffFFBF0F);
  static const Color red = Colors.red;
  static const Color green = Color(0xff1E943D);

  static const Color gold = Color(0xffFFD700);
  // static const Color brandYellow = Color(0xffF9B313);
  static const Color oraneBoxShado = Color(0xffFFEDBA);
  static const Color greenBoxShado = Color(0xffD7E3DB);
  static const Color redBoxShado = Color(0xffFDE5E6);
  static const Color black = Colors.black;

  static const Color yellow3 = Color(0xffFFDA75);
  static const Color simpleWhite = Colors.white;
  static const Color linkBlue = Color.fromARGB(255, 33, 40, 243);
  static const Color grey = Color(0xff231F20);

  static const Color grey1 = Color(0xff8E8084);
  static const Color grey2 = Color(0xff594F52);
  static const Color grey4 = Color(0xff8E8084);
  static const Color grey5 = Color(0xffBEB6B8);
  static const Color grey6 = Color(0xffECECEC);
  static Color grey8 = Colors.grey.shade300;
  static const Color grey7 = Color.fromARGB(255, 245, 243, 243);
  static const Color white = Color(0xffFFFFFF);
  static const Color yellow4 = Color(0xffFFE8A8);
  static const Color crimson = Color(0xffED1B24);
  static const Color simpleOrange = Color(0xffF07522);
  static const Color orange2 = Color(0xffFFDA75);
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: primaryFont,
    primaryColor: lightPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(headlineLarge: TextStyle(fontSize: 500)),
    appBarTheme: const AppBarTheme(
      backgroundColor: white,
      toolbarHeight: 115,
      elevation: 0,
    ),
  );
}
