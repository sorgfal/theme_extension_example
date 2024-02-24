import 'dart:ui';

abstract class AppLocalization {
  abstract String hello;
  abstract String world;
  static Map<Locale, AppLocalization> localization = {
    const Locale('ru', 'RU'): RuAppLocalization()
  };
}

class RuAppLocalization implements AppLocalization {
  @override
  String hello = 'Привет';

  @override
  String world = 'Мир';
}

class OtherAppLocalization implements AppLocalization {
  @override
  String hello = 'Hello';

  @override
  String world = 'World';
}
