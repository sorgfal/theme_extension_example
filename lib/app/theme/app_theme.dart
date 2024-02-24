import 'package:flutter/material.dart';

import 'package:theme_extension_example/app/theme/app_localization.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final Locale currentLocale;
  AppTheme(this.currentLocale);

  AppLocalization? _appLocalization;

  AppLocalization get l10n =>
      _appLocalization ??
      (_appLocalization = (AppLocalization.localization[currentLocale] ??
          OtherAppLocalization()));

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other, double t) {
    return this;
  }

  @override
  AppTheme copyWith({
    Locale? currentLocale,
  }) {
    return AppTheme(currentLocale ?? this.currentLocale);
  }
}
