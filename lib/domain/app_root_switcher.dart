import 'dart:async';

import 'package:disposable_provider/disposable_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:inventory_management/data/cloud_firestore/user_document.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/home_page.dart';
import 'package:inventory_management/ui/sign_in/sign_in.dart';
import 'package:inventory_management/utils/subscription_container/subscription_container.dart';
import 'package:inventory_management/utils/subscription_container/subscription_container_mixin.dart';
import 'package:rxdart/rxdart.dart';

import 'app_navigator.dart';

enum _FirstDestination { homePage, LoginPage }

class _SwitchingConditionBundle {
  _SwitchingConditionBundle({
    @required this.uid,
    @required this.userDoc,
  });

  final String uid;
  final UserDocument userDoc;

  _FirstDestination get firstDestination {
    /// Force updating is first priority. Even user who launched app first should update.

    if (uid == null || userDoc == null) {
      return _FirstDestination.LoginPage;
    } else {
      return _FirstDestination.homePage;
    }
  }
}

/// A model which switches root pages by checking
/// user data.
class AppRootSwitcher extends Disposable with SubscriptionContainerMixin {
  final AccountRepository accountRepository;
  final AppNavigator appNavigator;

  AppRootSwitcher({
    @required this.accountRepository,
    @required this.appNavigator,
  }) {
    _subscribeAuthState();
  }

  void _subscribeAuthState() {
    accountRepository
        .subscribeMyUserId()
        .distinct((preUid, nextUid) => preUid == nextUid)
        .pipe(_firebaseUserId);

    _firebaseUserId
        .asyncMap(
          (userId) async {
            if (userId == null) {
              return null;
            }
            return accountRepository.getCurrentUserPublicPart();
          },
        )
        .onErrorReturn(null)
        .pipe(_userDocument);

    Rx.combineLatest2<String, UserDocument, _SwitchingConditionBundle>(
      _firebaseUserId.stream,
      _userDocument.stream,
      (
        fireUserId,
        userDoc,
      ) =>
          _SwitchingConditionBundle(
        uid: fireUserId,
        userDoc: userDoc,
      ),
    ).distinct((pre, next) {
      final distinct = pre?.firstDestination == next?.firstDestination;
      return distinct;
    }).listen((bundle) async {
      switch (bundle.firstDestination) {
        case _FirstDestination.homePage:
          appNavigator.pushAndRemoveAllPage(HomePage.routeName);
          return;
        case _FirstDestination.LoginPage:
          appNavigator.pushAndRemoveAllPage(SignInPage.routeName);
          return;
      }
      assert(false, 'Unexpected _Progress:${bundle.firstDestination}');
    }).append(subscriptionContainer);
  }

  final _firebaseUserId = BehaviorSubject<String>();
  final _userDocument = BehaviorSubject<UserDocument>();

  @override
  void dispose() {
    super.dispose();
    _firebaseUserId.safeClose();
    _userDocument.safeClose();
  }
}

extension SafeClosableSubjectExtension<T> on Subject<T> {
  /// Close this Subject after all data was drained.
  Future<void> safeClose() => drain<void>().then((_) => close());
}
