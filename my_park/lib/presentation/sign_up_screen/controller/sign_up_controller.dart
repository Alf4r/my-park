import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {

  TextEditingController fullNameFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();



  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  String fullName = "";

  String email = "";
  String password ="";

  @override
  void onInit() {
    super.onInit();
    // Listen to changes in the text field
    fullNameFieldController.addListener(() {
      // Update fullName variable when the text changes
      fullName = fullNameFieldController.text;
    });

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
    fullNameFieldController.dispose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
  }
}
