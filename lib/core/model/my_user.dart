import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_user.freezed.dart';

@freezed
class MyUser with _$MyUser {
  const MyUser._();
  const factory MyUser(
    String id,
    String userName,
  ) = _MyUser;

  factory MyUser.fromSnapshot(DocumentSnapshot snap) {
    return MyUser(
      snap.id,
      snap['userName'],
    );
  }

  Map<String, Object> toDocument() {
    return {
      'userName': userName,
    };
  }
}
