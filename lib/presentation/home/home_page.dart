import 'package:flutter/material.dart';

import '../component/custom_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routePath = '/';
  static const pageTitle = '管理画面';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: routePath,
      title: pageTitle,
      child: Container(),
    );
  }
}
