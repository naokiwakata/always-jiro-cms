import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../presentation/home/home_page.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(routes: [
      GoRoute(
        path: HomePage.routePath,
        builder: (context, state) => const HomePage(),
      ),
    ]);
  },
);
