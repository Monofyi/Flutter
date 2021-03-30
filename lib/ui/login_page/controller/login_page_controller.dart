import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/domain/app_navigator.dart';
import 'package:inventory_management/ui/home_page/home_page.dart';
import 'package:inventory_management/ui/login_page/controller/login_model.dart';
import 'package:state_notifier/state_notifier.dart';

enum ValidationResult {
  userNameEmpty,
  emailInvalid,
  emailEmpty,
  phoneNumberInvalid,
  phoneNumberEmpty,
  passwordEmpty,
  passwordLessThanSix,
  confirmPasswordWrong,
  recoveryQuestionEmpty,
  recoveryAnswerEmpty,
  userTypeEmpty,
  userTypeMismatch,
  valid,
}

extension ErrorMessage on ValidationResult {
  String get errorMessage {
    switch (this) {
      case ValidationResult.valid:
        return null;
      case ValidationResult.userNameEmpty:
        return 'username cannot be empty';

      case ValidationResult.emailInvalid:
        return 'invalid emailId';

      case ValidationResult.phoneNumberInvalid:
        return 'invalid phone number';

      case ValidationResult.passwordLessThanSix:
        return 'password cannot be less than eight characters';

      case ValidationResult.confirmPasswordWrong:
        return 'password does not match';

      case ValidationResult.recoveryQuestionEmpty:
        return 'please enter recovery question';

      case ValidationResult.recoveryAnswerEmpty:
        return 'please enter recovery answer';

      case ValidationResult.userTypeEmpty:
        return 'please enter usertype';

      case ValidationResult.passwordEmpty:
        return 'please enter password';

      case ValidationResult.userTypeMismatch:
        return "please enter 0 or 1";

      case ValidationResult.emailEmpty:
        return "please enter email";

      case ValidationResult.phoneNumberEmpty:
        return "please enter contact number";
    }
    return null;
  }
}

class LoginPageController extends StateNotifier<LoginModel> {
  final AccountRepository accountRepository;
  final AppNavigator appNavigator;

  LoginPageController(
      {@required this.appNavigator, @required this.accountRepository})
      : super(LoginModel());

  Future<void> login() async {
    state = state.copyWith(loading: true);
    final result = await accountRepository.registerUser(
        email: state.email,
        password: state.password,
        contactNumber: state.contactNumber,
        confirmPassword: state.confirmPassword,
        userType: state.userType.toString(),
        recoveryAnswer: state.recoveryAnswer,
        userName: state.userName,
        recoveryQuestion: state.recoveryQuestion);
    state = state.copyWith(loading: false);
    if (result == LoginStatus.successfull) {
      appNavigator.pushAndRemoveAllPage(HomePage.routeName);
    }
  }

  void emailChanged(String email) {
    if (email != null) {
      state = state.copyWith(
        email: email,
        validation: email.isEmpty
            ? ValidationResult.emailEmpty
            : EmailValidator.validate(email)
                ? ValidationResult.valid
                : ValidationResult.emailInvalid,
      );
    }
  }

  void usernameChanged(String username) {
    if (username != null) {
      state = state.copyWith(
        userName: username,
        validation: username.isEmpty
            ? ValidationResult.userNameEmpty
            : ValidationResult.valid,
      );
    }
  }

  void phoneNumberChanged(String number) {
    if (number != null) {
      final no = int.parse(number);
      state = state.copyWith(
        contactNumber: no,
        validation: number.characters.length == 10
            ? ValidationResult.valid
            : ValidationResult.phoneNumberInvalid,
      );
    }
  }

  void passwordChanged(String password) {
    if (password != null) {
      state = state.copyWith(
        password: password,
        validation: password.isNotEmpty
            ? password.characters.length >= 8
                ? ValidationResult.valid
                : ValidationResult.passwordLessThanSix
            : ValidationResult.passwordEmpty,
      );
    }
  }

  void confirmPasswordChanged(String password) {
    if (password != null) {
      state = state.copyWith(
        confirmPassword: password,
        validation: password.compareTo(state.password) == 0
            ? ValidationResult.valid
            : ValidationResult.confirmPasswordWrong,
      );
    }
  }

  void recoveryQuestionChanged(String question) {
    if (question != null) {
      state = state.copyWith(
        recoveryQuestion: question,
        validation: question.isEmpty
            ? ValidationResult.userNameEmpty
            : ValidationResult.valid,
      );
    }
  }

  void recoveryAnswerChanged(String answer) {
    if (answer != null) {
      state = state.copyWith(
        recoveryAnswer: answer,
        validation: answer.isEmpty
            ? ValidationResult.userNameEmpty
            : ValidationResult.valid,
      );
    }
  }

  void userTypeChanged(int user) {
    if (type != null) {
      state = state.copyWith(
        userType: user,
        validation: user != 0 || user != 1
            ? ValidationResult.userTypeMismatch
            : ValidationResult.valid,
      );
    }
  }

  String validationMessageUserName(String current) {
    if (state.validation == ValidationResult.userNameEmpty) {
      return state.validation.errorMessage;
    }

    return null;
  }

  String validationMessageEmail(String current) {
    if (state.validation == ValidationResult.emailInvalid ||
        state.validation == ValidationResult.emailEmpty) {
      return state.validation.errorMessage;
    }
    return null;
  }

  String validationMessageContactNumber(String current) {
    if (state.validation == ValidationResult.phoneNumberInvalid ||
        state.validation == ValidationResult.phoneNumberEmpty) {
      return state.validation.errorMessage;
    }
    return null;
  }

  String validationMessagePassword(String current) {
    if (state.validation == ValidationResult.passwordEmpty ||
        state.validation == ValidationResult.passwordLessThanSix) {
      return state.validation.errorMessage;
    }
    return null;
  }

  String validationMessageConfirmPassword(String current) {
    if (state.validation == ValidationResult.confirmPasswordWrong) {
      return state.validation.errorMessage;
    }
    return null;
  }

  String validationMessageRecoveryQuestion(String current) {
    if (state.validation == ValidationResult.recoveryQuestionEmpty) {
      return state.validation.errorMessage;
    }
    return null;
  }

  String validationMessageRecoveryAnswer(String current) {
    if (state.validation == ValidationResult.recoveryAnswerEmpty) {
      return state.validation.errorMessage;
    }
    return null;
  }

  String validationMessageUserType(String current) {
    if (state.validation == ValidationResult.userTypeEmpty ||
        state.validation == ValidationResult.userTypeMismatch) {
      return state.validation.errorMessage;
    }
    return null;
  }
}
