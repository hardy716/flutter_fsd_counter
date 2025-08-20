import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../entities/counter/index.dart';
import '../../pages/home/index.dart';
import '../../pages/counter/index.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/counter',
        builder: (context, state) => const CounterPage(),
      ),
    ],
  );
});

final routerControllerProvider = Provider<RouterController>((ref) {
  final router = ref.watch(appRouterProvider);
  return RouterController(ref, router);
});

class RouterController {
  final Ref _ref;
  final GoRouter _router;

  RouterController(this._ref, this._router) {
    _ref.listen(counterStatusProvider, (previous, next) {
      if (previous != next) {
        _handleStatusChange(next);
      }
    });
  }

  void _handleStatusChange(CounterStatus status) {
    final targetRoute = status.when(
      stopped: () => '/',
      starting: () => '/',
      started: () => '/counter',
      error: (_) => '/',
    );

    if (_router.routerDelegate.currentConfiguration.uri.path != targetRoute) {
      _router.go(targetRoute);
    }
  }
}