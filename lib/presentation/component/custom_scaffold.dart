import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../home/home_page.dart';
import '../timeline/timeline_page.dart';

/// サイドバーを表示するためのラッパー
///
/// 基本的に管理webの全ページで用いる
class CustomScaffold extends HookConsumerWidget {
  const CustomScaffold({
    super.key,
    required this.route,
    required this.title,
    required this.child,
  });

  final String route;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AdminScaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      sideBar: SideBar(
        activeTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
        activeBackgroundColor: Colors.orange,
        backgroundColor: Colors.grey,
        textStyle: const TextStyle(color: Colors.white, fontSize: 18),
        items: const [
          AdminMenuItem(title: HomePage.pageTitle, route: HomePage.routePath),
          AdminMenuItem(
              title: TimelinePage.pageTitle, route: TimelinePage.routePath),
        ],
        selectedRoute: route,
        onSelected: (item) {
          if (item.route != null) {
            GoRouter.of(context).push(item.route!);
          }
        },
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: child,
          ),
        ],
      ),
    );
  }
}
