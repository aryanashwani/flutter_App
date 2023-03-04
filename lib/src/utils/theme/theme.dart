import 'package:curiosify/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{

 TAppTheme._();
 static ThemeData LightTheme = ThemeData(brightness: Brightness.light,
 textTheme: TTextTheme.lightTextTheme,
 );
 static ThemeData darkTheme =ThemeData(
     brightness: Brightness.dark,
 textTheme: TTextTheme.darkTextTheme,
 );
}