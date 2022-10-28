import 'package:always_jiro_cms/repository/post_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/post.dart';

/// 入力された文字列を管理する StateProvider。
final inputTextProvider = StateProvider.autoDispose<String>((_) => "");

/// 取得したタイムラインを管理する StateProvider
final userPostsProvider = StateProvider.autoDispose<List<Post>>((_) => []);

/// Firestore の timeline を取得する FutureProvider
final postsFutureProvider =
    FutureProvider.autoDispose.family<List<Post>, String>(
  (ref, userId) => ref.watch(postRepositoryProvider).fetchPosts(userId),
);
