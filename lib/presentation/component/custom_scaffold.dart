import 'package:always_jiro_cms/presentation/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    return Stack(
      children: [
        AdminScaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          sideBar: SideBar(
            activeTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
            textStyle: const TextStyle(color: Colors.white, fontSize: 18),
            items: const [
              AdminMenuItem(
                  title: HomePage.pageTitle, route: HomePage.routePath),
            ],
            selectedRoute: route,
            onSelected: (item) {
              if (item.route != null) {
                GoRouter.of(context).go(item.route!);
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
        ),
      ],
    );
  }
}
