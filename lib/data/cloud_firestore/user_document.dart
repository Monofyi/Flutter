import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flamingo/flamingo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'firestore_constants.dart';

class UserDocument extends Document<UserDocument> implements Model, User {
  UserDocument({
    String id,
    DocumentSnapshot snapshot,
    Map<String, dynamic> values,
    CollectionReference collectionRef,
  }) : super(
          id: id,
          snapshot: snapshot,
          values: values,
          collectionRef: collectionRef,
        );

  @override
  String companyName;

  @override
  String displayName;

  @override
  int contactNumber;

  @override
  String password;

  @override
  Map<String, dynamic> toData() {
    final data = <String, dynamic>{};
    writeNotNull(data, "companyName", companyName);
    writeNotNull(data, "displayName", displayName);
    writeNotNull(data, "password", password);
    writeNotNull(data, "contactNumber", contactNumber);

    return data;
  }

  @override
  void fromData(Map<String, dynamic> data) {
    companyName = valueFromKey(data, 'companyName');
    displayName = valueFromKey(data, 'displayName');
    password = valueFromKey(data, 'password');
    contactNumber = valueFromKey(data, ' contactNumber');
  }

  @override
  String get modelName => '${FirestoreDocumentRoots.users}/users';
}

class User {
  const User(
      {@required this.companyName,
      @required this.displayName,
      @required this.contactNumber,
      @required this.password});

  final String companyName;

  final String displayName;

  final int contactNumber;

  final String password;
}
