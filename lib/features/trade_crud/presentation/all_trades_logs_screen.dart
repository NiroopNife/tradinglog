import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trading_log/core/utils/router/route_location.dart';
import 'package:trading_log/features/trade_crud/presentation/widgets/log_card.dart';
import 'package:trading_log/features/trade_crud/providers/trade_provider.dart';

class AllTradesLogsScreen extends ConsumerWidget {
  static AllTradesLogsScreen builder(
          BuildContext context, GoRouterState state) =>
      const AllTradesLogsScreen();

  const AllTradesLogsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final trades = ref.watch(tradesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Trade Logs'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(RouteLocation.createTradeLog);
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: trades.length,
          itemBuilder: (context, index) {
            return const LogCard(title: 'title');
          },),
    );
  }
}
