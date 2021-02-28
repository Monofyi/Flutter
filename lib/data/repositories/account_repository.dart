import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/data/cloud_firestore/user_document.dart';

class LoginResult {}

class AccountRepository {
  /// Try to fetch current logged in user, throws NoSuchUserException if user not exists.
  const AccountRepository();

  Future<UserDocument> getCurrentUserPublicPart() async {
    final userId = await getCurrentUserId();

    final userRef = UserDocument(id: userId).reference;
    final snapshot = await userRef.get();

    if (!snapshot.exists) {
      throw NoSuchUserException(userId);
    }

    return UserDocument(snapshot: snapshot);
  }

  Stream<String> subscribeMyUserId() {
    return FirebaseAuth.instance.onAuthStateChanged.map((firUser) {
      return firUser?.uid;
    });
  }

  Future<void> logout() async {
    final _auth = FirebaseAuth.instance;
    await _auth.signOut();

    /// It's workaround to update state of [FirebaseAuth.instance.onAuthStateChanged].
    // ignore: unawaited_futures
    _auth.currentUser();
  }

  /// Fetch logged in user id
  Future<String> getCurrentUserId() async {
    final user = await FirebaseAuth.instance.currentUser();
    return user?.uid;
  }

  //todo - have to add Phone auth
  Future<LoginResult> loginWithContactNumber(
      {@required String email, @required String password}) async {
    /// Refresh Authentication.
    await FirebaseAuth.instance.signOut();

    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on Exception catch (_) {
      rethrow;
    }
    await FirebaseAuth.instance.currentUser();
    return LoginResult();
  }

  Future<LoginResult> createUserWithPasswordAndEmail(
      {@required String email, @required String password}) async {
    /// Refresh Authentication.
    await FirebaseAuth.instance.signOut();

    try {
      final id = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      print(id.user);
    } on Exception catch (_) {
      rethrow;
    }
    await FirebaseAuth.instance.currentUser();
    return LoginResult();
  }

  Future<LoginResult> loginWithEmailAndPassword(
      {@required String email, @required String password}) async {
    /// Refresh Authentication.
    await FirebaseAuth.instance.signOut();

    try {
      final id = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print(id.user);
    } on Exception catch (_) {
      rethrow;
    }
    await FirebaseAuth.instance.currentUser();
    return LoginResult();
  }
}

class NotAuthenticatedException implements Exception {
  @override
  String toString() => '🤓 This account is not Authenticated.';
}

class NoSuchUserException implements Exception {
  final String userId;

  NoSuchUserException(this.userId);

  @override
  String toString() => "No such user: ID = $userId";
}
