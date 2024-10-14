import 'package:go_router/go_router.dart';
import 'package:trading_log/features/trade_crud/presentation/all_trades_logs_screen.dart';
import 'package:trading_log/router/routes.dart';


final appRoutes = [
  GoRoute(
      path: RouteLocation.allTradeLogs,
      parentNavigatorKey: navigationKey,
      builder: AllTradesLogsScreen.builder),
  GoRoute(
      path: RouteLocation.createTradeLog,
      parentNavigatorKey: navigationKey,
      builder: AllTradesLogsScreen.builder),
];
