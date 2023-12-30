import 'package:flutter/cupertino.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/change_password_screen/models/change_password_model.dart';

/// A controller class for the ChangePasswordScreen.
///
/// This class manages the state of the ChangePasswordScreen, including the
/// current changePasswordModelObj
class ChangePasswordController extends GetxController {
  Rx<ChangePasswordModel> changePasswordModelObj = ChangePasswordModel().obs;

  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void onClose() {
  oldPasswordController.dispose();
  newPasswordController.dispose();
  confirmPasswordController.dispose();
  super.onClose();
  }

  // Add your method to change the password here
  }

