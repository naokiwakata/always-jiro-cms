import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/post.dart';

// ignore: one_member_abstracts
abstract class BasePostRepository {
  Future<List<Post>> fetchPosts(String userId);
}

final postRepositoryProvider = Provider.autoDispose<PostRepository>(
  (ref) => PostRepository(),
);

class PostRepository implements BasePostRepository {
  final _firestore = FirebaseFirestore.instance;
  final colName = 'timeline';

  @override
  Future<List<Post>> fetchPosts(String userId) async {
    final snap = await _firestore
        .collection(colName)
        .where('userUid', isEqualTo: userId)
        .get();
    final posts =
        snap.docs.map((snapshot) => Post.fromFirestore(snapshot)).toList();
    return posts;
  }
}
