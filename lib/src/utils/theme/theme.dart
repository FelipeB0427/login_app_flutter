import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/utils/widget_themes/elevated_button_theme.dart';
import 'package:login_flutter_app/src/utils/widget_themes/outlined_button_theme.dart';
import 'package:login_flutter_app/src/utils/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  // -- Light Theme -- //
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );

// -- Dark Theme -- //
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );
}