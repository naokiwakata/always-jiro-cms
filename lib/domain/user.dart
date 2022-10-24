import 'package:cloud_firestore/cloud_firestore.dart';

class AppUser {
  AppUser({
    required this.uid,
    required this.displayName,
    required this.photoURL,
    required this.signInMethod,
    required this.twitterURL,
    required this.introduce,
    required this.rating,
    required this.allVisit,
    required this.favorite,
    required this.allowPushNotification,
    required this.susuritaiUids,
    required this.reference,
  });
  factory AppUser.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final map = snapshot.data()!;
    return AppUser(
      uid: snapshot.id,
      reference: snapshot.reference,
      displayName: map['displayName'],
      photoURL: map['photoURL'],
      signInMethod: map['signInMethod'],
      twitterURL: map['twitterURL'],
      introduce: map['introduce'],
      rating: map['rating'],
      allVisit: map['allVisit'],
      favorite: map['favorite'],
      allowPushNotification: map['allowPushNotification'],
      susuritaiUids: map['susuritaiUids'],
    );
  }

  String? uid;
  String? displayName;
  String? photoURL;
  String? signInMethod;
  String? twitterURL;
  String? introduce;
  int? rating;
  int? allVisit;
  int? favorite;
  bool? allowPushNotification;
  List<dynamic>? susuritaiUids;
  DocumentReference reference;
}
