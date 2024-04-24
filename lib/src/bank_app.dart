import 'package:flutter/material.dart';
import 'package:loyout_bank/src/page/home_page.dart';
import 'package:loyout_bank/src/theme/theme_data_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeDataApp.themeDefault,
      home: const HomePage(),
    );
  }
}
