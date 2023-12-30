import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/start_screen/models/start_model.dart';

/// A controller class for the StartScreen.
///
/// This class manages the state of the StartScreen, including the
/// current startModelObj
class StartController extends GetxController {
  Rx<StartModel> startModelObj = StartModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.signScreen,
      );
    });
  }
}
