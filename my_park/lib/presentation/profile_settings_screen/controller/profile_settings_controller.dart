import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/profile_settings_screen/models/profile_settings_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileSettingsScreen.
///
/// This class manages the state of the ProfileSettingsScreen, including the
/// current profileSettingsModelObj
class ProfileSettingsController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<ProfileSettingsModel> profileSettingsModelObj = ProfileSettingsModel().obs;
  TextEditingController emailController = TextEditingController();


  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    emailController.dispose();
  }




}
