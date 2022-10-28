import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/post.dart';
import '../../provider/timeline.dart';
import '../component/custom_scaffold.dart';

class TimelinePage extends HookConsumerWidget {
  const TimelinePage({super.key});

  static const routePath = '/timeline';
  static const pageTitle = 'タイムライン';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.watch(inputTextProvider);
    final posts = ref.watch(postsFutureProvider(userId)).when(
          data: (data) => data,
          error: (error, stackTrace) => <Post>[],
          loading: () => <Post>[],
        );
    return CustomScaffold(
      route: routePath,
      title: pageTitle,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: const Text('TIMELINE'),
            ),
            TextFormField(
              onChanged: (input) {
                ref.watch(inputTextProvider.notifier).update((state) => input);
              },
              decoration: InputDecoration(
                hintText: 'ユーザーIDを入力',
                filled: true,
                isDense: true,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ref.refresh(postsFutureProvider(userId));
                log("投稿数：${posts.length}個");
              },
              child: const Text('検索する'),
            ),
          ],
        ),
      ),
    );
  }
}
