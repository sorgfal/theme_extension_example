import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:theme_extension_example/app/theme/app_colors_theme.dart';
import 'package:theme_extension_example/app/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).extension<AppColorTheme>();
    log('HOME SCREEN BUILD');
    return Scaffold(
      backgroundColor: colorTheme?.backgrounColor,
      body: HomeScreenBody(colorTheme: colorTheme),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
    required this.colorTheme,
  });

  final AppColorTheme? colorTheme;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).extension<AppColorTheme>();
    log('HOME SCREEN BODY BUILD');
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            Theme.of(context).extension<AppTheme>()!.l10n.hello,
            style: TextStyle(color: colorTheme?.textColor),
          ),
          Text(Theme.of(context).extension<AppTheme>()!.l10n.world,
              style: TextStyle(color: colorTheme?.textColor))
        ],
      ),
    );
  }
}
