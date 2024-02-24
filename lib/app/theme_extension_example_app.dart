import 'package:flutter/material.dart';
import 'package:theme_extension_example/app/screen/home_screen.dart';
import 'package:theme_extension_example/app/theme/app_colors_theme.dart';
import 'package:theme_extension_example/app/theme/app_theme.dart';

class ThemeExtensionExampleApp extends StatefulWidget {
  const ThemeExtensionExampleApp({super.key});

  @override
  State<ThemeExtensionExampleApp> createState() =>
      _ThemeExtensionExampleAppState();
}

class _ThemeExtensionExampleAppState extends State<ThemeExtensionExampleApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: Theme.of(context).copyWith(extensions: [
        AppTheme(
          Locale('ru', 'RU'),
        ),
        switch (MediaQuery.platformBrightnessOf(context)) {
          Brightness.dark => DarkAppColorTheme(),
          Brightness.light => LightAppColorTheme(),
        }
      ]),
    );
  }
}
