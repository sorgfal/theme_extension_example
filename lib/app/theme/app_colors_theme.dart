import 'package:flutter/material.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final Color backgrounColor;
  final Color textColor;

  AppColorTheme({required this.backgrounColor, required this.textColor});

  @override
  AppColorTheme copyWith({
    Color? backgrounColor,
    Color? textColor,
  }) {
    return AppColorTheme(
      backgrounColor: backgrounColor ?? this.backgrounColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  AppColorTheme lerp(
    AppColorTheme? other,
    double t,
  ) {
    return AppColorTheme(
        backgrounColor: Color.lerp(backgrounColor, other?.backgrounColor, t) ??
            backgrounColor,
        textColor: Color.lerp(textColor, other?.textColor, t) ?? textColor);
  }
}

class DarkAppColorTheme extends AppColorTheme {
  DarkAppColorTheme()
      : super(textColor: Colors.white, backgrounColor: Colors.black);
}

class LightAppColorTheme extends AppColorTheme {
  LightAppColorTheme()
      : super(textColor: Colors.black, backgrounColor: Colors.white);
}
