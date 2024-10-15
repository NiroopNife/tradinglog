import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trading_log/core/utils/router/app_routes.dart';
import 'package:trading_log/core/utils/router/route_location.dart';

final navigationKey = GlobalKey<NavigatorState>();

final routesProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RouteLocation.allTradeLogs,
    navigatorKey: navigationKey,
    routes: appRoutes);
});
