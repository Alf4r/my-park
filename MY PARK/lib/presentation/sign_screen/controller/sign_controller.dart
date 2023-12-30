import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/sign_screen/models/sign_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignScreen.
///
/// This class manages the state of the SignScreen, including the
/// current signModelObj
class SignController extends GetxController {
  TextEditingController emailFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();

  Rx<SignModel> signModelObj = SignModel().obs;

  String email = "";
  String password = "";

  @override
  void onInit() {
    super.onInit();

    emailFieldController.addListener(() {
      email = emailFieldController.text;
    });

    passwordFieldController.addListener(() {
      password = passwordFieldController.text;
    });
  }

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
  }
}
