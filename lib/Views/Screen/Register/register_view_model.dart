import 'package:FindHackathon/Core/Firebase/user_firebase.dart';
import 'package:flutter/material.dart';

import '../../../Core/Base/base_view_model.dart';

class RegisterViewModel extends BaseViewModel {
  String name, username, email, password, confirmPassword;
  bool validation = false;
  final _formKey = GlobalKey<FormState>();

  validationChange(bool val) {
    validation = val;
    notifyListeners();
  }

  Future<void> firebaseUserCreate() async {
    UserFirebase()..createAccountFirebase(email, password);
  }

  get formKey => _formKey;

  @override
  void init() {}
}
