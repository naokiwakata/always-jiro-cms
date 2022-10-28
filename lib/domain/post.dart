import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  Post({
    required this.uid,
    required this.reference,
    required this.comment,
    required this.address,
    required this.imageURLs,
    required this.imageIDs,
    required this.shopImage,
    required this.shopName,
    required this.shopUid,
    required this.userImage,
    required this.userName,
    required this.userUid,
    required this.createdAt,
    required this.tags,
    required this.favorite,
    required this.rating,
  });

  factory Post.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final map = snapshot.data()!;
    final tags = <String>[];
    final imageURLs = map['imageURLs'];

    /// 画像の枚数分一意の文字列を作成する。timelineのheroタグで使用
    for (final imageURL in imageURLs!) {
      final tag = Random().nextInt(10000).toString();
      tags.add(tag);
    }
    return Post(
      uid: snapshot.id,
      reference: snapshot.reference,
      comment: map['comment'],
      address: map['address'],
      rating: map['rating'],
      imageIDs: map['imageIDs'],
      imageURLs: map['imageURLs'],
      shopImage: map['shopImage'],
      shopName: map['shopName'],
      shopUid: map['shopUid'],
      userImage: map['userImage'],
      userName: map['userName'],
      userUid: map['userUid'],
      createdAt: map['createdAt'],
      favorite: map['favorite'],
      tags: tags,
    );
  }

  String? uid;
  String? comment;
  int? rating;
  String? address;
  List<dynamic>? imageURLs;
  List<dynamic>? imageIDs;
  String? shopImage;
  String? shopName;
  String? shopUid;
  String? userImage;
  String? userName;
  String? userUid;
  Timestamp? createdAt;
  List<String> tags = [];
  int? favorite;
  DocumentReference reference;
}
