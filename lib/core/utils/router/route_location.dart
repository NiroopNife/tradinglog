import 'package:flutter/foundation.dart' show immutable;

@immutable
class RouteLocation {
  const RouteLocation._();

  static String get allTradeLogs => '/tradeLogs';
  static String get createTradeLog => '/createTradeLog';
}
