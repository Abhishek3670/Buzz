import 'package:flutter/material.dart';
import 'package:pipbuzz/models/registration_user.dart';

class RegistrationProvider extends ChangeNotifier {
  final RegistrationData _data = RegistrationData();

  RegistrationData get data => _data;

  void updateFirstName(String firstName) {
    if (_data.firstName != firstName) {
      _data.firstName = firstName;
      notifyListeners();
    }
  }

  void updateLastName(String lastName) {
    if (_data.lastName != lastName) {
      _data.lastName = lastName;
      notifyListeners();
    }
  }

  void updateEmail(String email) {
    if (_data.email != email) {
      _data.email = email;
      notifyListeners();
    }
  }

  void updateVerificationCode(String verificationCode) {
    if (_data.verificationCode != verificationCode) {
      _data.verificationCode = verificationCode;
      notifyListeners();
    }
  }
}
