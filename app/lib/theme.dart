import 'package:flutter/material.dart';
import './constants.dart';
import './google_fonts.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: primary_color,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: content_light_theme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: content_light_theme),
    colorScheme: ColorScheme.light(
      primary: primary_color,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: content_light_theme.withOpacity(0.7),
      unselectedItemColor: content_light_theme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: primary_color),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: primary_color,
    scaffoldBackgroundColor: content_light_theme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: content_dark_theme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: content_dark_theme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: primary_color,
      secondary: secondary_color,
      error: error_color,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: content_light_theme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: content_dark_theme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: primary_color),
      showUnselectedLabels: true,
    ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
