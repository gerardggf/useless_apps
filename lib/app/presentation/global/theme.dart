import 'package:flutter/material.dart';

import '../../core/const/colors.dart';

class UselessTheme {
  static final ThemeData lightTeme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: AppColors.primary,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 22,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}
