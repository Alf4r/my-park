import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/regis_plat_screen/models/regis_plat_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisPlatScreen.
///
/// This class manages the state of the RegisPlatScreen, including the
/// current regisPlatModelObj
class RegisPlatController extends GetxController {
  TextEditingController platNumberController = TextEditingController();
  TextEditingController jenisMobilController = TextEditingController();

  Rx<RegisPlatModel> regisPlatModelObj = RegisPlatModel().obs;

  @override
  void onClose() {
    super.onClose();
    platNumberController.dispose();
  }
}
