import 'package:flutter/material.dart';
import 'package:loyout_bank/src/theme/theme_color.dart';

class ThemeDataApp {
  static ThemeData get themeDefault => ThemeData(
        useMaterial3: true,
        cardColor: ThemeColor.backgroundCard,
        primarySwatch: ThemeColor.primaryColor,
        primaryColor: ThemeColor.primaryColor,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
          bodyLarge: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.w700,
          ),
          titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor:
                const MaterialStatePropertyAll(ThemeColor.primaryColor),
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        dividerTheme: const DividerThemeData(
          space: 16,
          thickness: 1,
          color: Colors.white,
        ),
      );
}
