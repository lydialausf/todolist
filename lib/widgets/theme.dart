import 'package:flutter/material.dart';

class MyAppThemes {
  // Using "static" so that we can easily access it later
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  static final lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData.dark();
}
