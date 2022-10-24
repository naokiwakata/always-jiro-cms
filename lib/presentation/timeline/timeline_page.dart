import 'package:flutter/material.dart';

import '../component/custom_scaffold.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  static const routePath = '/timeline';
  static const pageTitle = 'タイムライン';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: routePath,
      title: pageTitle,
      child: Container(
        child: const Text('TIMELINE'),
      ),
    );
  }
}
