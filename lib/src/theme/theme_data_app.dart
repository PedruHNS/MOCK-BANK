import 'package:flutter/material.dart';
import 'package:loyout_bank/src/theme/theme_color.dart';

class ThemeDataApp {
  static ThemeData get themeDefault => ThemeData(
        cardTheme:
            const CardTheme(color: ThemeColor.backgroundCard, elevation: 4),
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
          bodyLarge: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.w700,
          ),
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
      );
}
