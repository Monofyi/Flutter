import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';

class LoginPageController {
  final AccountRepository accountRepository;

  LoginPageController({@required this.accountRepository});

  void login({
    @required String userName,
    @required String email,
    @required String contactNumber,
    @required String password,
  }) {
    accountRepository.createUserWithPasswordAndEmail(
        email: email, password: password);
  }
}
